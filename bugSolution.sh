#!/bin/bash

# This script demonstrates the correct way to handle variable expansion within
# command substitution to avoid unintended variable overwriting.

var="world"

# By using double quotes around the inner command substitution, parameter expansion happens before the command runs. It keeps outer scope variables intact.
result="$(echo "Hello $var")"

echo "Result: $result"