#!/bin/bash

# Build script for web-to-app Android project
# This script builds both debug and release APKs

set -e

echo "🚀 Building web-to-app Android APK..."
echo "======================================="

# Check if gradlew exists and is executable
if [ ! -f "./gradlew" ]; then
    echo "❌ Error: gradlew not found. Make sure you're in the project root directory."
    exit 1
fi

# Make gradlew executable if it's not
if [ ! -x "./gradlew" ]; then
    echo "🔧 Making gradlew executable..."
    chmod +x ./gradlew
fi

# Clean previous builds
echo "🧹 Cleaning previous builds..."
./gradlew clean

# Build debug APK
echo "🔨 Building debug APK..."
./gradlew assembleDebug

# Build release APK
echo "📦 Building release APK..."
./gradlew assembleRelease

echo ""
echo "✅ Build completed successfully!"
echo "======================================="
echo "📁 APK files location:"
echo "  Debug APK:   app/build/outputs/apk/debug/"
echo "  Release APK: app/build/outputs/apk/release/"
echo ""
echo "🎉 You can now install the APK on your Android device!"