#!/bin/sh

cmp --silent $1 $2 || echo "different"
