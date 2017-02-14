#!/bin/bash

sudo ldconfig -v 2>/dev/null | grep -v ^$'\t'
