#!/bin/bash

# Use the action "Encode Selected Video Files" in Finder to encode the selected video files.
automator -i $0 "/System/Library/Services/Encode Selected Video Files.workflow"