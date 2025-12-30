## Core Principles
-- **Content is King:** All Markdown files in '/_posts' must remain untouched in content and structure.
-- **Tech stack:** Jekyll, Liquid, HTML, CSS, JavaScript, and Ruby Gems for dependency management via Bundler.


## Directory Map
- '/_posts': Content of blog posts. Within this directory there is a '_2000-12-31-Template.md' file which is used by the content creation team as template when creating a new post.
- '/_layouts': Templates of the website.
- '/_includes': For reusable UI components (Nav, Footer...).
- '/assets': It includes different directories that are used when building the website. It includes, fonts, images, resources and styles.
- '/assets/css': Styles of the website.
- '/assets/img': It includes all the images used in the website. It includes img and icons used in the about page. It includes all the imagees in the
- '/assets/img/about': It includes images and icons used in the about page.
- '/assets/img/posts': It includes all the images used as part of the posts.
- '/assets/resources': It includes documents that can be downloadable from the website.
- '/_site': **[DO NOT EDIT]** This is the build output directory. All changes here will be overwritten.

# AI Governance
## Protected zones
- 'CNAME': Do not touch domain settings.
- '_config.yml': Main Jekyll configuration. Changes can break the entire site build. Do not modify without explicit instructions.
- 'Gemfile', 'Gemfile.lock': Specifies project dependencies. Do not modify.
- '_posts': I have a lot of posts here, a sample template that can be used for coding purposes is this one'_2000-12-31-Template.md'. Use always this one to plan developments but never load all posts in order to avoid exhausting the API quote for GEMINI calls.
- '/assets/img', '/assets/resources': Do not load this files into gemini in order to avoid exhausting the API quote for GEMINI calls.
- 'robots.txt', 'sitemap.xml', 'feed/index.xml': SEO-related files, likely auto-generated or configured via `_config.yml`. Avoid direct edits.


## Active development
- '/_layouts': For HTML structure changes.
- '/_includes': For reusable UI components (Nav, Footer...).
- '/assets/css': For look and feel logic.
- Top-level pages: `about.markdown`, `index.markdown`, `legal.markdown`, etc., are safe to edit for content changes.

## Implementation Rules
- **No Jekyll Serve:** Do not execute `bundle exec jekyll serve`. The user runs the server locally. Instead, ask the user to verify changes after they have been implemented.
- **Atomic Changes:** One feature per response. Prepare commits that only focus on one single feature. Always on a branch different to master.
- **Variable Persistence:** Always use existing Liquid variables.
- **Context review**: Analyze current layout before suggesting anything.
- **Request for approval**: Always suggest me for approval any modification to any file before applying it.
- **Commit Approval**: Do not commit any changes before receiving specific approval from the developer you are working with. It is acceptable to modify files, but refrain from committing until clear approval is granted.

## Git protocol
- Before suggesting code, verify the current branch name.
- All code suggestions must include a suggested "Conventional Commit" message.
- When creating a commit, please dedicate some time to explain all the key changes made in the commit message.
