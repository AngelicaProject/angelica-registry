# Continuous integration

## Gates

- **Check**: every changed entry builds from the source at its tag, the plugin's tests pass, and `angelica release review` accepts the release's plugin file (signed with the entry's author key, the entry's id and version). It runs with read-only permissions and no secrets.
- Workflows pass `actionlint` and `zizmor`, with the workflow rules of the `angelica` repository.

Only Publish, on `main`, can sign; only Merge, after a passed Check, can merge.

## Failure handling

Confirm the run belongs to the current head, identify the failing step, read the logs, and fix the entry or the plugin rather than weakening the gate.
