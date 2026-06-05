#!/bin/bash
# This script will be used to download gradle-wrapper.jar during build
mkdir -p gradle/wrapper
cd gradle/wrapper
# Download gradle 7.4.2 wrapper jar
curl -L https://services.gradle.org/distributions/gradle-7.4.2-wrapper.jar -o gradle-wrapper.jar
echo "Gradle wrapper JAR downloaded successfully"
