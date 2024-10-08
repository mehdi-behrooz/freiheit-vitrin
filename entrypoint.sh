#!/bin/sh

envsubst <www/index.html | sponge www/index.html
