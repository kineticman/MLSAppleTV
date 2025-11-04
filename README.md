# MLS Apple TV Deep Links

Scrape MLS schedule data from Apple TV and generate a simple M3U + XMLTV for players/launchers that can hand off to the Apple TV app.

**Requirements:** Python 3.10+ (stdlib only; no external packages)

## Quick start

```bash
git clone https://github.com/kineticman/MLSAppleTV.git
cd MLSAppleTV

# two steps
python3 scrape_mls_schedule.py
python3 export_mls_outputs.py

# or one button
./scripts/generate.sh
```

## Outputs (written to `./out`)

- `out/mls.m3u`
- `out/guide.xml`
- `out/mls_schedule.json`
- `out/raw_canvas.json`

> Optional preview JSON:
```bash
python3 export_mls_outputs.py --preview   # writes out/mls_deeplinks_preview.json
```

## Notes

- `out/` is .gitignored by design (run locally; attach artifacts to Releases if you want to share).
- Scripts create `./out` automatically; fresh clones won’t crash without it.
- If Apple changes endpoints/fields, just re-run the scripts.
