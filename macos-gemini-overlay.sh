#!/bin/bash

# Find the directory where this script is located
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Check if Python 3.10+ exists
PYTHON=$(which python3.12 || which python3.11 || which python3.10 || which python3)
PYTHON_VERSION=$($PYTHON --version 2>&1 | awk '{print $2}')
PYTHON_MAJOR=$(echo $PYTHON_VERSION | cut -d. -f1)
PYTHON_MINOR=$(echo $PYTHON_VERSION | cut -d. -f2)

# Make sure Python version is 3.10+
if [ "$PYTHON_MAJOR" -lt 3 ] || ([ "$PYTHON_MAJOR" -eq 3 ] && [ "$PYTHON_MINOR" -lt 10 ]); then
    osascript -e 'display dialog "This application requires Python 3.10 or later. Please install from python.org and try again." buttons {"OK"} default button "OK" with icon stop'
    exit 1
fi

# Change to the application directory
cd "$SCRIPT_DIR"

# Install required packages if they don't exist
$PYTHON -c "import pyobjc" 2>/dev/null || $PYTHON -m pip install pyobjc
$PYTHON -c "import jaraco.text" 2>/dev/null || $PYTHON -m pip install jaraco.text

# Run the application
exec $PYTHON run.py 