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

Tag pages require the development-only `jekyll-tagging` gem and are generated locally. They are not included in the default GitHub Pages build unless you deploy via a custom GitHub Actions workflow.

## Project layout

| Path | Purpose |
|------|---------|
| `_posts/` | Blog posts |
| `_pages/` | Static pages (`about`, `blog`, `legal`) |
| `_layouts/` | Page templates |
| `_includes/` | Reusable HTML fragments |
| `_sass/` | Stylesheets (compiled into `assets/css/style.css`) |
| `assets/` | Images and compiled CSS |
| `js/` | Site JavaScript |

## Credits

Template: [Zolan](https://github.com/artemsheludko/zolan) by Artem Sheludko.
