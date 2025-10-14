# Fetch PR from origin and create a new Git worktree
# Run the function like this: `review 123-feature-branch`
function review() {
  TARGET_FOLDER=../my-project-$1
  NC='\033[0m' # No Color
  YELLOW='\033[0;33m'

  if [ "${PWD##*/}" != "my-project" ]; then
    echo "Run this command from the project root"
    return 0
  fi

  if [ -z "$1" ]; then
    echo "Branch name plz..."
    return 0
  fi

  git fetch origin $1                   # Fetch the PR branch
  git worktree add ${TARGET_FOLDER}/ $1 # Create a new worktree

  # Do any project related initiation here
  cp frontend/conf.json ${TARGET_FOLDER}/frontend/conf.json
  (
    cd ${TARGET_FOLDER}/frontend
    npm ci
  )

  # Extra setup

  # Open VSCode from the branch
  # ( cd ${TARGET_FOLDER} ; code . )

  # Open a new tmux window with 3 panes in the given directory
  #   ┌───────┬─────┐
  #   |       |  1  |
  #   |   0   |─────|
  #   |       |  2  |
  #   └───────┴─────┘
  # tmux new-window -n $1 -c ${TARGET_FOLDER} \; split-window -h -c ${TARGET_FOLDER} \; split-window -v -c ${TARGET_FOLDER} \; select-pane -t 0

  echo -e "\n\bA new worktree created at ${YELLOW}${TARGET_FOLDER}/${NC}\n"
}

# Quickly open Alko's beer selection from command line
alias oispa='open https://www.alko.fi/tuotteet/tuotelistaus\?SearchTerm=olut'
