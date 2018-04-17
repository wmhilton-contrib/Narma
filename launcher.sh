#!/bin/sh

echo '{
  "name": "Narma",
  "main": "'$1'",
  "node-remote": ["'$1'"],
  "window": {
    "title": "Narma",
    "toolbar": true,
    "frame": true,
    "width": 400,
    "height": 300,
    "position": "center"
  },
  "webkit": {
    "plugin": true
  }
}' > test/package.json

./node_modules/.bin/nw test/
