#!/bin/sh
# Wraps campus.html into a standalone index.html (for GitHub Pages, Netlify, or opening locally).
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="en">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">\n<style>body{margin:0}[hidden]{display:none!important}</style>\n</head>\n<body>\n'; cat campus.html; printf '\n</body>\n</html>\n'; } > index.html
