#!/bin/bash

# Clean up needed repos and folders
rm -dfr ./obj && find ./_site -mindepth 1 -not -regex "^\.\/_site\/\.git.*" -delete

docfx metadata

docfx build docfx.json --force
