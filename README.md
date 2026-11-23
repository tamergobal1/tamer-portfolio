# Tamer Portfolio

Static portfolio site (HTML + three.js). Concept work for fictional brands.

## Structure
- `index.html` – the whole site (Home, Work, About; AR/EN)
- `media/` – videos (MP4) and posters (JPG)
- `config.js` – optional Supabase connection (public read-only key)
- `supabase/schema.sql` – table, security policy and seed data
- `vercel.json` – Vercel settings (clean URLs, media caching)

## Run locally
Open `index.html` in a browser, or run `npx serve .`

## Add a new video
- Without Supabase: copy the MP4 + poster into `media/` and add an entry to `ITEMS` in `index.html`.
- With Supabase: upload files to `media/`, then add a row in the `portfolio_items` table.
