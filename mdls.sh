#!/bin/bash

# List the metadata attributes for the selected files.
# It’s better to add this as "Manual Execution", since the output is a bit large.
# Make sure the output option is set to "Key-Value Pairs", so that Bloom will display the output nicely.

mdls "$@" | sed -E $':a\n/.*[(][^)]*$/{\n$q\nN\nba\n}\ns/\\n[[:space:]]*//g\ns/,([^[:space:]])/, \\1/g\ns/[[:space:]]+=/:/'
