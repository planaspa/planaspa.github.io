# Navigating the Digital Economy

Personal site of Pablo Lanaspa. Writing on product management, platforms, and the digital economy.

Built with [Jekyll](https://jekyllrb.com/) and deployed via [GitHub Pages](https://pages.github.com/) to [planaspa.com](https://planaspa.com).

Based on the [Zolan](https://github.com/artemsheludko/zolan) theme.

## Local development

```bash
bundle install
bundle exec jekyll serve
```

Open [http://localhost:4000](http://localhost:4000).

## Content model

- **Site shell** (navigation, UI strings, dates): English (`site.lang: en`, `_data/i18n/en.yml`).
- **Blog posts**: Spanish (`lang: es` in front matter). Posts show an "Originally written in Spanish" note; this is intentional and permanent.
- **Tags**: Non-clickable labels on post pages. Tag slugs in front matter are English; display names come from `_data/tag_labels.yml`.
- **Legacy URLs**: Spanish tag URLs under `/tag/{slug}/` redirect to the homepage via `_pages/tag-redirects/`.

## Project layout

| Path | Purpose |
|------|---------|
| `_posts/` | Blog posts (Spanish) |
| `_pages/` | Static pages (`about`, `legal`) and Spanish tag redirects |
| `_layouts/` | Page templates |
| `_includes/` | Reusable HTML fragments |
| `_data/` | i18n strings and tag display labels |
| `_sass/` | Stylesheets (compiled into `assets/css/style.css`) |
| `assets/` | Images and compiled CSS |
| `js/` | Site JavaScript |

## Credits

Template: [Zolan](https://github.com/artemsheludko/zolan) by Artem Sheludko.
