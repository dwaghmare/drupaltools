# Update local copy from remote repo.

BRANCH_NAME=$(git symbolic-ref -q HEAD)
BRANCH_NAME=${BRANCH_NAME##refs/heads/}
BRANCH_NAME=${BRANCH_NAME:-HEAD}

# Replace the 'origin' and 'acquia' with your repo alias(es).
git pull acquia $BRANCH_NAME
git pull origin $BRANCH_NAME
