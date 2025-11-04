#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "$0")/.."
test -f out/guide.xml && echo "✅ guide.xml" || { echo "❌ guide.xml missing"; exit 1; }
test -f out/mls.m3u   && echo "✅ mls.m3u"   || { echo "❌ mls.m3u missing"; exit 1; }
command -v xmllint >/dev/null && xmllint --noout out/guide.xml || echo "ℹ️  xmllint not installed; skipping"
head -n 5 out/mls.m3u || true
