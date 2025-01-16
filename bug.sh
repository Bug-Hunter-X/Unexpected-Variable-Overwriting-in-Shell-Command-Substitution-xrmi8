#!/bin/bash

# This script demonstrates an uncommon shell scripting error: assuming that
# variable expansion within a command substitution always happens before
# the command is executed.

var="world"

# This line is intended to print "Hello world"
# However, the command substitution $(echo "Hello $var") is executed AFTER
# the command substitution $(var=local) has overwritten the variable $var
# in the current shell.

result=$(var=local; echo "Hello $var")

echo "Result: $result"