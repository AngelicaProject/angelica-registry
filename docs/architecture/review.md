# Review of submissions

Review starts from the permission diff produced by the build.

## What reviewers check

- **Permissions match the plugin's purpose.** Every permission and every listed map entry is needed by something the plugin describes.
- **Network domains** belong to the plugin's author or to a named service the plugin documents.
- **`game.act`** (acting for the player) is described in the plugin's description so players see it before installing.
- **`game.memory`** (full game access) is accepted only when no named map entry or service can do the job; the reason is written in the pull request.
- **Imported interfaces** of other plugins are used for their documented purpose.
- **The source** builds from the stated commit without network access beyond fetching pinned dependencies.

## Refusal

A submission is refused when a permission is not justified, when the description hides what the plugin does with a permission, or when the build is not reproducible. The refusal names the permission or the step.
