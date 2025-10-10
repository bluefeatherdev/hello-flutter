#!/bin/bash
for d in */ ; do
    if [ -f "$d/pubspec.yaml" ]; then
        echo "Processing: $d"
        cd "$d"
        flutter clean
        flutter pub get
        cd ..
    fi
done
