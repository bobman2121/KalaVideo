#!/bin/bash

echo "Starting to copy DLLs..."
echo ""

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Origin paths

CRASH_RELEASE="${ROOT_DIR}/KalaCrashHandler/release/libKalaCrashHandler.so"
CRASH_DEBUG="${ROOT_DIR}/KalaCrashHandler/debug/libKalaCrashHandlerD.so"

WINDOW_RELEASE="${ROOT_DIR}/KalaWindow/release/libKalaWindow.so"
WINDOW_DEBUG="${ROOT_DIR}/KalaWindow/debug/libKalaWindowD.so"

# Target paths

RELEASE_DLLS="${ROOT_DIR}/../files/external dlls/release"
DEBUG_DLLS="${ROOT_DIR}/../files/external dlls/debug"

# Copy release dlls

cp -f "$CRASH_RELEASE" "$RELEASE_DLLS"
echo "Copied $CRASH_RELEASE to $RELEASE_DLLS"

cp -f "$WINDOW_RELEASE" "$RELEASE_DLLS"
echo "Copied $WINDOW_RELEASE to $RELEASE_DLLS"

# Copy debug dlls

cp -f "$CRASH_DEBUG" "$DEBUG_DLLS"
echo "Copied $CRASH_DEBUG to $DEBUG_DLLS"

cp -f "$WINDOW_DEBUG" "$DEBUG_DLLS"
echo "Copied $WINDOW_DEBUG to $DEBUG_DLLS"

echo ""
echo "Finished copying DLLs!"

echo ""
read -r -p "Press enter to exit..."
echo ""
exit 0
