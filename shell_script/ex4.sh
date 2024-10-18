#!/usr/bin/env bash
# find all html files and substitute suffixes of them with zip
find ./htmls -type f -name "*.html" -print0 | xargs -d '\n' tar -cvzf html.zip
