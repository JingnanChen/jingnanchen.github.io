#!/usr/bin/env bash
set -euo pipefail

OVERLEAF_REPO="/Users/jc680/Documents/GitHub/overleaf-cv"
WEBSITE_REPO="/Users/jc680/Documents/GitHub/jingnanchen.github.io"
SOURCE_PDF="$OVERLEAF_REPO/Jingnan_CV.pdf"
TARGET_PDF="$WEBSITE_REPO/static/pdf/cv.pdf"

git -C "$OVERLEAF_REPO" pull --ff-only
cp "$SOURCE_PDF" "$TARGET_PDF"

echo "Updated website CV:"
echo "$TARGET_PDF"
git -C "$WEBSITE_REPO" status --short
