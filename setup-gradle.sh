#!/bin/bash
set -e

# Download gradle-wrapper.jar
echo "Downloading Gradle 7.4.2 wrapper..."
mkdir -p gradle/wrapper

# Try to download the official gradle wrapper jar
curl -fSL https://services.gradle.org/distributions/gradle-7.4.2-wrapper.jar \
  -o gradle/wrapper/gradle-wrapper.jar || \
curl -fSL https://raw.githubusercontent.com/gradle/gradle/v7.4.2/gradle/wrapper/gradle-wrapper.jar \
  -o gradle/wrapper/gradle-wrapper.jar

# Verify the file was downloaded
if [ -f gradle/wrapper/gradle-wrapper.jar ]; then
  ls -lh gradle/wrapper/gradle-wrapper.jar
  echo "✓ Gradle wrapper JAR downloaded successfully"
else
  echo "✗ Failed to download gradle-wrapper.jar"
  exit 1
fi
