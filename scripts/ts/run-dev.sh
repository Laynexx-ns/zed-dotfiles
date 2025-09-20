#!/bin/bash

root_dir="${ZED_WORKSPACE_FOLDER:-$PWD}"

echo "running project using bun from $root_dir"
bun --bun run dev
