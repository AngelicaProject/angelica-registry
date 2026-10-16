# Overview

How the catalog works for players and authors is described in the angelica repository: [catalog](https://github.com/AngelicaProject/angelica/blob/main/docs/architecture/catalog.md). The formats of `plugins/<id>.toml`, `withdrawn.toml`, and the index are owned there: [catalog format 1](https://github.com/AngelicaProject/angelica/blob/main/docs/formats/catalog-v1.md).

```text
the plugin's repository: tag v<version> -> its CI signs the plugin file with the author key
        |
pull request here: plugins/<id>.toml (repository, tag, author key)
        |
Check (no secrets): builds the plugin from the source at the tag, runs its tests,
                    reviews what it declares against the catalog
        |
Merge: an update of a plugin in the catalog, same repository and author key,
       declaring nothing more, or a new plugin that does not act, use the
       internet, or see other players -> merged; anything else -> a maintainer
        |
Publish (on main): builds new versions, signs them with the release key,
                   publishes them behind their catalog links and the signed index
        |
the Catalog tab of the Angelica menu reads the index
```

## Layout

- `plugins/<id>.toml`: one entry per plugin.
- `withdrawn.toml`: withdrawn versions and plugins.
- `scripts/review-entry.sh`: the review of one entry, which Check and Merge run with the `angelica` tool.
- `.github/workflows/`: `check.yml`, `merge.yml`, `publish.yml`.

## Workflows

- **Check** runs on every pull request with read-only permissions and no secrets. For each changed entry it clones the plugin's repository at the tag beside the angelica repository's `main`, runs the plugin's tests, builds its component, and runs `angelica release review`: the release of the tag must hold a plugin file signed with the entry's author key and matching its id and version; the review lists what the plugin declares and what it adds to the catalog version, and, for a new plugin, reads the classes of its game map domains from the released map (the latest release of `angelica-gamemap`). The review is in the run's summary.
- **Merge** runs after Check passes, with main's code. It reads the pull request's entry through the API and reviews it again from the plugin files of the releases; it never runs the pull request's code. A pull request that changes exactly one entry and whose review is automatic is merged; otherwise it comments why a maintainer reviews it.
- **Publish** runs on `main`. It builds each entry's plugin from the source at its tag, signs it with the release key (`ANGELICA_RELEASE_SIGNING_KEY`), and publishes it in the release `<id>`, behind `https://github.com/AngelicaProject/angelica-registry/releases/download/<id>/<id>.angelica`; a version already published keeps its file. It then writes `catalog.json` with `angelica release catalog`, signed with the release key, and uploads it to the release `catalog`.
