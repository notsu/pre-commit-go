#!/usr/bin/env bash
#
# Capture and print stdout, since gofmt doesn't use proper exit codes
#
set -e

# run tests
failed_tests="$(go test | grep "FAIL:" | awk '{print $3}')"
if test -n "$failed_tests" ; then
  for failed in $failed_tests; do
    echo "git pre-commit check failed: test failed: $failed"
  done
  exit 1
fi