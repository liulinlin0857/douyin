#!/usr/bin/env bash

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME
# Resolve links: $0 may be a link
PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls -ld "$PRG"
    link=`ls -l "$PRG" | awk '{print $NF}'`
    case $link in
      /*) PRG="$link" ;;
      *) PRG=`dirname "$PRG"`"/$link" ;;
    esac
done
SAVED="$(cd "$(dirname \"$PRG\")" && pwd)"
cd "$SAVED" || exit
APP_HOME=$(cd "${APP_HOME:-./}" && pwd -P) || exit
cd - || exit

APP_NAME="Gradle"
APP_BASE_NAME=$(basename "$0")

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS='-Dfile.encoding=UTF-8'

# Use the maximum available, or set MAX_FD != maximum.
MAX_FD="maximum"

warn ( ) {
    echo "$*"
} >&2

die ( ) {
    echo
    echo "$*"
    echo
    exit 1
} >&2

# OS specific support (must be 'true' or 'false').
case "$(uname)" in  #(
  CYGWIN* )         CYGWIN=true  ;; #(
  Darwin* )         DARWIN=true  ;; #(
  MSYS* | MINGW* )  MSYS=true   ;; #(
  NWDOS* )          NWDOS=true  ;; #(
esac

export CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

if ! command -v java &> /dev/null
then
    die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH."
fi

if [ ! -x "$JAVA_HOME/bin/java" ] && [ ! -x "$JAVA_HOME/bin/java.exe" ]
then
    die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
fi

cd "$APP_HOME" || exit
exec "$JAVA_HOME/bin/java" $DEFAULT_JVM_OPTS $JAVA_OPTS $GRADLE_OPTS "-Dorg.gradle.appname=$APP_BASE_NAME" -classpath "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
