#!/usr/bin/env bash
# Reviews one catalog entry: the plugin file of its tag in the plugin's
# repository against the catalog's current entry and published file, and,
# for a new plugin, against the domains of the released game map.
# Usage: review-entry.sh <angelica tool> <plugins/<id>.toml> <review.json> [<base ref>] [<game map folder>]
# Needs gh with a token that can read releases.
set -euo pipefail
tool=$1
entry=$2
out=$3
base=${4:-origin/main}
map=${5:-}
id=$(basename "$entry" .toml)
field() { sed -n "s/^$1 = \"\(.*\)\"$/\1/p" "$entry"; }
repository=$(field repository)
tag=$(field tag)
work=$(mktemp -d)
gh release download "$tag" --repo "$repository" --pattern "$id.angelica" --dir "$work/author"
args=(release review --entry "$entry" --author-file "$work/author/$id.angelica" --json)
if git cat-file -e "$base:plugins/$id.toml" 2>/dev/null; then
  mkdir -p "$work/previous/plugins"
  git show "$base:plugins/$id.toml" > "$work/previous/plugins/$id.toml"
  gh release download "$id" --repo AngelicaProject/angelica-registry --pattern "$id.angelica" --dir "$work/published"
  args+=(--previous-entry "$work/previous/plugins/$id.toml" --previous-file "$work/published/$id.angelica")
fi
if [ -n "$map" ]; then
  args+=(--map "$map")
fi
"$tool" "${args[@]}" > "$out"
