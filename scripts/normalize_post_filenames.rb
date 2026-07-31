#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require "jekyll"

POSTS_DIR = "_posts"

def normalize_slug(slug)
  slug = slug.downcase
  slug = slug.tr("áàäâã", "aaaaa")
             .tr("éèëê", "eeee")
             .tr("íìïî", "iiii")
             .tr("óòöôõ", "ooooo")
             .tr("úùüû", "uuuu")
             .tr("ñ", "n")
  slug = slug.gsub(/[¿?()'"`´]/, "")
  slug = slug.gsub(/[^a-z0-9]+/, "-")
  slug.gsub(/^-+|-+$/, "")
end

site = Jekyll::Site.new(Jekyll.configuration)
site.read

site.posts.docs.sort_by(&:path).each do |post|
  basename = File.basename(post.path)
  match = basename.match(/\A(\d{4}-\d{2}-\d{2})-(.+)\.md\z/)
  next unless match

  date, title_slug = match.captures
  normalized_slug = normalize_slug(title_slug)
  next if normalized_slug == title_slug.downcase && basename == "#{date}-#{normalized_slug}.md"

  new_basename = "#{date}-#{normalized_slug}.md"
  new_path = File.join(POSTS_DIR, new_basename)
  old_path = post.path

  next if File.exist?(new_path) && new_path != old_path

  content = File.read(old_path, encoding: "UTF-8")
  unless content.match?(/^permalink:\s/m)
    permalink = post.url.end_with?("/") ? post.url : "#{post.url}/"
    content = content.sub(/\A---\n/, "---\npermalink: #{permalink}\n")
  end

  File.write(old_path, content)
  if old_path != new_path
    FileUtils.mv(old_path, new_path)
    puts "#{basename} -> #{new_basename} (#{post.url})"
  end
end
