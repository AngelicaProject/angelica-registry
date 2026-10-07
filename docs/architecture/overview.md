# Overview

```text
pull request: plugins/<id>.toml (repository + commit)
        │
        ▼
build workflow: fetch the commit, build with the pinned toolchain,
                angelica plugin pack, check the manifest
        │
        ▼
review: permission diff against the previous version
        │ merge
        ▼
publish workflow: sign package and index, upload
        │
        ▼
in-game catalog reads the signed index
```

## Layout

- `plugins/<id>.toml`: one catalog entry per plugin; see [`../formats/entry-v1.md`](../formats/entry-v1.md).
- `toolchain.toml`: the pinned Rust toolchain and `angelica` tool version used to build packages.

## Build

For a pull request that adds or changes an entry, the build workflow:

1. fetches the plugin repository at the entry's commit;
2. builds it with the pinned toolchain and packs it with `angelica plugin pack`, which checks the manifest against the map and the plugin API;
3. compares the manifest with the previous published version and writes the permission diff to the pull request;
4. keeps the package as an artifact with its hash.

The build workflow has no access to signing keys.

## Publication

After a merge, the publish workflow rebuilds the package, checks that its hash equals the one built for the pull request, signs it and the new index, and uploads both. A mismatched hash stops publication.
