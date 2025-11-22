# MLSDeeplink v1.0.0 — first stable release

**What’s included**
- Two-step flow:
  - `scrape_mls_schedule.py` → writes `out/mls_schedule.json` (+ `out/raw_canvas.json`)
  - `export_mls_outputs.py` → writes `out/mls.m3u` and `out/guide.xml` (XMLTV)
- One-button runner: `./scripts/generate.sh`
- Optional: `--preview` writes `out/mls_deeplinks_preview.json`
- Stdlib only (no external Python deps). Tested on Python 3.10+.
- Repo hygiene: `.editorconfig`, `.gitattributes`, `.gitignore`, `LICENSE`, CI (compile check)

**Quick start**
```bash
git clone https://github.com/kineticman/MLSDeeplink.git
cd MLSDeeplink
python3 scrape_mls_schedule.py
python3 export_mls_outputs.py
# outputs: out/mls.m3u, out/guide.xml, out/mls_schedule.json, out/raw_canvas.json
```

**Notes**
- `out/` is `.gitignored` by design; attach artifacts to Releases if you want to share them.
- Scripts create `./out` automatically on fresh clones.
