#!/bin/bash

set -e

echo "Running scripts"

directories=(
  "/src/packages"
)

run_scripts_in_dir() {
  local dir="$1"
  echo "=== Running scripts in $dir ==="

  # Проверяем, есть ли там скрипты *.sh
  if ls "$dir"/*.sh &> /dev/null; then
    for script in $(ls "$dir"/*.sh | sort); do
      echo "==> Running $script"
      bash "$script"
    done
  else
    echo "==> No .sh files found in $dir"
  fi
}

for d in "${directories[@]}"; do
  run_scripts_in_dir "$d"
done

echo "All scripts executed successfully."
