#!/bin/bash

# Use `Key-Value Pairs` For nice output
xattr "$@" | sed 's/:\([^ ]\)/: \1/'
