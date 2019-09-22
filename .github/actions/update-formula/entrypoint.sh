#!/bin/sh
echo "Updating Homebrew Formula..."
ruby $(dirname $0)/entrypoint.rb

echo "Pushing changes"
remote_repo="git+ssh://git@github.com/${GITHUB_REPOSITORY}.git"
echo "${remote_repo}"

eval "$(ssh-agent -s)"
echo "${GIT_DEPLOY_KEY}" | ssh-add -
export GIT_SSH_COMMAND="ssh -o StrictHostKeyChecking=no"
git remote set-url origin "${remote_repo}"
git push origin HEAD:master
