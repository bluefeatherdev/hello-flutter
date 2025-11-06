#!/bin/bash

# Base path on Windows using Git Bash/WSL
BASE_DIR="/d/dev/hello-flutter/learn-flutter/WRITE_FOLDER_NAME"

for dir in "$BASE_DIR"/*; do
  if [ -d "$dir" ] && [ -f "$dir/pubspec.yaml" ]; then
    echo "Cleaning Flutter project in: $dir"
    cd "$dir" || continue
    flutter clean
  fi
done

echo "Finished cleaning all Flutter projects."
