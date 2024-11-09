#!/usr/bin/env bash
set -e

hugo -t hugo-coder
cd public
echo "ryanbrushett.com" > CNAME
git add .
msg="Building site ($(date))"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

git push origin main
