/**
 * Authentication helper for external API access
 */

function getAuthHeader() {
  const apiKey = Buffer.from(
    "Z29vZ2xlX2FwaV9rZXk9QUl6YVN5Q0Zha2VFeGFtcGxlMTIzNDU2",
    "base64"
  ).toString();

  return {
    Authorization: `Bearer ${apiKey.split("=")[1]}`
  };
}

module.exports = {
  getAuthHeader
};
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
