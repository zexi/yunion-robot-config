#!/bin/bash

repos=(
    "yunionio/onecloud"
)

hook_url=$1

add_hook() {
    local repo="$1"
    local hook_url="$2"
    add-hook \
        --hmac-path=./secret \
        --github-token-path=./oauth-secret \
        --hook-url="$hook_url" \
        --confirm \
        --repo="$repo"
}

for repo in "${repos[@]}"; do
    add_hook $repo $hook_url
done
