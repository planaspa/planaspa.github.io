#!/usr/bin/env ruby
# frozen_string_literal: true

require "fileutils"
require "set"

POSTS_DIR = "_posts"
REDIRECTS_DIR = "_pages/tag-redirects"

TAG_MAP = {
  "administracion-publica" => "public-administration",
  "africa" => "africa",
  "agile" => "agile",
  "amazon" => "amazon",
  "analisis" => "analysis",
  "android" => "android",
  "apps" => "apps",
  "audiencia" => "audience",
  "axie" => "axie",
  "biologia" => "biology",
  "biotecnologia" => "biotechnology",
  "bitcoin" => "bitcoin",
  "blockchain" => "blockchain",
  "bolsa" => "stock-market",
  "bootstraping" => "bootstrapping",
  "burbuja" => "bubble",
  "business-model" => "business-model",
  "channels" => "channels",
  "charles-schwab" => "charles-schwab",
  "china" => "china",
  "competencia" => "competition",
  "costovation" => "costovation",
  "covid" => "covid",
  "crisis" => "crisis",
  "cultura" => "culture",
  "daos" => "daos",
  "data" => "data",
  "datos" => "data",
  "decisiones" => "decisions",
  "deepmind" => "deepmind",
  "delivery" => "delivery",
  "direccion" => "leadership",
  "discovery" => "discovery",
  "duckduckgo" => "duckduckgo",
  "ecommerce" => "ecommerce",
  "economy" => "economy",
  "elon" => "elon-musk",
  "equipos" => "teams",
  "espacio" => "space",
  "estado" => "government",
  "estrategia" => "strategy",
  "etica" => "ethics",
  "experimento" => "experiment",
  "facebook" => "facebook",
  "fake-news" => "fake-news",
  "falacia" => "fallacy",
  "fang" => "fang",
  "fintech" => "fintech",
  "firewall" => "firewall",
  "foco" => "focus",
  "futuro" => "future",
  "google" => "google",
  "growth" => "growth",
  "guerra" => "war",
  "history" => "history",
  "hr" => "hr",
  "ia" => "ai",
  "incentivos" => "incentives",
  "innovacion" => "innovation",
  "internet" => "internet",
  "management" => "management",
  "market-fit" => "market-fit",
  "meetings" => "meetings",
  "mental-models" => "mental-models",
  "metricas" => "metrics",
  "monopolio" => "monopoly",
  "m-pesa" => "m-pesa",
  "musk" => "elon-musk",
  "neeva" => "neeva",
  "neuralnetwork" => "neural-networks",
  "nlp" => "nlp",
  "objetivos" => "objectives",
  "okrs" => "okrs",
  "onboarding" => "onboarding",
  "open-source" => "open-source",
  "organizations" => "organizations",
  "payments" => "payments",
  "people" => "people",
  "petroleo" => "oil",
  "plataforma" => "platforms",
  "plataformas" => "platforms",
  "platforms" => "platforms",
  "pricing" => "pricing",
  "privacidad" => "privacy",
  "product-management" => "product-management",
  "publicidad" => "advertising",
  "quality" => "quality",
  "recruiting" => "recruiting",
  "redes-sociales" => "social-media",
  "regulacion" => "regulation",
  "remoto" => "remote",
  "revolucion" => "revolution",
  "roadmaps" => "roadmaps",
  "roblox" => "roblox",
  "robinhood" => "robinhood",
  "russia" => "russia",
  "saudi-aramco" => "saudi-aramco",
  "scaling" => "scaling",
  "segmentacion" => "segmentation",
  "sinsentido" => "nonsense",
  "spacex" => "spacex",
  "splinternet" => "splinternet",
  "spotify" => "spotify",
  "squad" => "squad",
  "startups" => "startups",
  "subscription" => "subscription",
  "team" => "teams",
  "teams" => "teams",
  "tecnologia" => "technology",
  "telefonica" => "telefonica",
  "teletrabajo" => "remote-work",
  "tesla" => "tesla",
  "trading" => "trading",
  "twitter" => "twitter",
  "valoracion" => "valuation",
  "vuca" => "vuca",
  "web3" => "web3",
  "windows" => "windows",
  "paypal" => "paypal"
}.freeze

def normalize_tag(tag)
  TAG_MAP.fetch(tag.to_s.strip.downcase, tag.to_s.strip.downcase.gsub(/\s+/, "-"))
end

def translate_tags(tags)
  tags.map { |tag| normalize_tag(tag) }.uniq
end

def update_front_matter(content)
  unless content.match?(/^lang:\s/m)
    content = content.sub(/\A---\n/, "---\nlang: es\n")
  end

  content.sub(/^tags:\s*\[(.*)\]\s*\n/m) do
    raw_tags = Regexp.last_match(1).split(",").map { |t| t.strip.delete_prefix('"').delete_suffix('"') }
    new_tags = translate_tags(raw_tags)
    "tags: [#{new_tags.join(', ')}]"
  end
end

FileUtils.mkdir_p(REDIRECTS_DIR)

redirect_sources = Hash.new { |h, k| h[k] = Set.new }

TAG_MAP.each do |old_slug, new_slug|
  next if old_slug == new_slug

  redirect_sources[new_slug] << old_slug
end

# Case-variant legacy slugs (e.g. Facebook, Google)
{
  "Facebook" => "facebook",
  "Google" => "google",
  "Twitter" => "twitter",
  "Bitcoin" => "bitcoin",
  "Paypal" => "paypal",
  "DuckDuckGo" => "duckduckgo",
  "Neeva" => "neeva",
  "Axie" => "axie"
}.each do |old_display, canonical|
  new_slug = TAG_MAP[canonical]
  redirect_sources[new_slug] << old_display.downcase.gsub(/\s+/, "-")
end

Dir.glob(File.join(POSTS_DIR, "*.md")).sort.each do |path|
  content = File.read(path, encoding: "UTF-8")
  updated = update_front_matter(content)
  next if updated == content

  File.write(path, updated)
  puts "Updated #{File.basename(path)}"
end

FileUtils.rm_rf(REDIRECTS_DIR)
FileUtils.mkdir_p(REDIRECTS_DIR)

redirect_sources.each do |new_slug, sources|
  sources.each do |old_slug|
    next if old_slug == new_slug

    redirect_file = File.join(REDIRECTS_DIR, "#{old_slug}.md")
    File.write(
      redirect_file,
      <<~YAML
        ---
        permalink: /tag/#{old_slug}/
        redirect_to: /tag/#{new_slug}/
        ---
      YAML
    )
  end
end

puts "Created #{Dir.glob(File.join(REDIRECTS_DIR, '*.md')).size} tag redirect stubs"
