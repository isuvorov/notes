
items=(
    "marcoms.oceanic-plus"
    "vscode-icons-team.vscode-icons"
    "miguelsolorio.fluent-icons"
    "formulahendry.terminal"
    "alefragnani.project-manager"
    "jgclark.vscode-todo-highlight"
    "dbaeumer.vscode-eslint"
    "eamodio.gitlens"
    "mhutchie.git-graph"
    "mikestead.dotenv"
    "ms-vsliveshare.vsliveshare"
    "vscode-ext.sync-rsync"
    "wmaurer.change-case"
    "christian-kohler.path-intellisense"
    "wix.vscode-import-cost"
)

echo "Installing VSCode extentions..."

for item in "${items[@]}"
do
  code --install-extension $item
done

echo "Installing VSCode extentions – done"

```