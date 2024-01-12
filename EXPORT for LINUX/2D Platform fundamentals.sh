#!/bin/sh
echo -ne '\033c\033]0;2D Platform fundamentals assignment FINAL\a'
base_path="$(dirname "$(realpath "$0")")"
"$base_path/2D Platform fundamentals.x86_64" "$@"
