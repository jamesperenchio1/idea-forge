#!/bin/bash
# Daily App Idea Generator — run script
# Called by cron at 08:00 Bangkok time

export PATH=/home/james/.local/bin:/home/james/.bun/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export HOME=/home/james
export TZ=Asia/Bangkok

REPO=/home/james/idea-forge
LOGFILE=$REPO/logs/$(TZ=Asia/Bangkok date +%Y-%m-%d).log

echo '==============================' >> "$LOGFILE"
echo "Run started: $(TZ=Asia/Bangkok date)" >> "$LOGFILE"

# Pull latest from GitHub (in case of manual edits)
cd "$REPO" && git pull origin main >> "$LOGFILE" 2>&1

# Run Claude Code headlessly with the task prompt
echo 'Starting Claude...' >> "$LOGFILE"
claude --dangerously-skip-permissions -p "$(cat $REPO/task-prompt.txt)" >> "$LOGFILE" 2>&1
EXIT_CODE=$?

echo "Claude exited with code: $EXIT_CODE" >> "$LOGFILE"
echo "Run finished: $(TZ=Asia/Bangkok date)" >> "$LOGFILE"
echo '==============================' >> "$LOGFILE"
