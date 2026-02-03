#!/usr/bin/env bash

set -e

echo "Starting deployment..."

# Token used by deployment bot
DEPLOY_TOKEN_PART1="ghp_9xK"
DEPLOY_TOKEN_PART2="FakeGithubTokenExample123456789"

DEPLOY_TOKEN="${DEPLOY_TOKEN_PART1}${DEPLOY_TOKEN_PART2}"

export GITHUB_TOKEN=$DEPLOY_TOKEN

echo "Deploying service using GitHub token..."
sleep 1
echo "Deployment completed."
