#!/bin/bash

echo "Starting the Frequency Analyzer..."

# Running the Python frequency analyzer
FREQ_RESULT=$(python3 /app/.github/scriptsfrequency.py /app/data.txt)

# Running update_readme.sh
bash /app/.github/scripts/update_readme.sh "$FREQ_RESULT" "$GITHUB_USER"

echo "Process completed!"