#!/bin/bash

# Clean up needed repos and folders
rm -dfr ./obj && find _site \! -name '.git' -delete

docfx metadata

docfx build docfx.json --force
