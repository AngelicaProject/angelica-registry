# Continuous integration

## Gates

- Every entry follows [entry v1](../formats/entry-v1.md), and published versions were only appended to.
- For a changed entry, the plugin builds from its commit with the pinned toolchain, packs with `angelica plugin pack`, and the permission diff is posted to the pull request.
- Workflows pass `actionlint` and `zizmor`, with the workflow rules of the `angelica` repository.

The build job has read-only permissions and no secrets; only the publish workflow on `main` can sign.

## Failure handling

Confirm the run belongs to the current head, identify the failing step, read the logs, and fix the entry or the plugin rather than weakening the gate.
