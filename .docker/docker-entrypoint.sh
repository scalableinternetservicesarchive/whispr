#!/bin/bash

# Forces Docker to exit and return the error 
# if any command results in a non-zero exit code
set -e

# Install missing gems, based on what we've cached, too
bundle check || (echo "Installing missing gems..." && bundle install --binstubs="$BUNDLE_BIN" || exit $?)

# Have docker run the OG command passed in
exec "$@" || (echo "Exiting build process..." && exit $?)
