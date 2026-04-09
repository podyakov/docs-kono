#!/bin/bash

cd /Users/eka/Desktop/docs-kono

git add .

# коммит только если есть изменения
if ! git diff --cached --quiet; then
  git commit -m "auto backup $(date '+%Y-%m-%d %H:%M:%S')"
  git push origin main
fi

# добавить этот файл в крон
# crontab -e
# */5 * * * * /Users/eka/Desktop/docs-kono/auto-backup.sh
# в настройках добавить full disk access для /usr/sbin/cron
# System Settings → Privacy & Security → Full Disk Access