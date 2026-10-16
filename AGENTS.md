# Angelica registry guidelines

This file is the repository entry point for coding tools. Durable rules live in `docs/`; task-specific execution guidance lives in `.ai/`. Do not duplicate canonical documentation here.

The registry is the catalog of published Angelica plugins. The plugin manifest and the plugin API are owned by the `angelica` repository: <https://github.com/AngelicaProject/angelica/blob/main/docs/formats/plugin-manifest-v1.md>.

## Context loading

Load the instruction modules that match the task:

- Any change: `.ai/development.md`
- Git branches, commits, rebases, or pushes: `.ai/git.md`
- Pull requests: `.ai/pull-requests.md`
- Code review or review feedback: `.ai/code-review.md`
- CI or workflow failures: `.ai/ci.md`
- Documentation changes: `docs/AGENTS.md`

Then load the documentation for the task:

- Rules of the catalog: `docs/product/principles.md`
- From a submission to a signed index: `docs/architecture/overview.md`
- Reviewing a submission: `docs/architecture/review.md`
- Catalog entry and index formats: `docs/formats/README.md`
- Contribution workflow: `docs/development/README.md`

## Always-on rules

- A plugin is published only from a source commit, built by the registry's workflow. No binary is ever accepted from a submitter.
- A submission that adds permissions is reviewed for those permissions before anything else. A new plugin merges by itself only when it does not act for the player, use the internet, or see other players.
- Signing keys are used only by the publishing workflow; they never appear in the repository, logs, or pull requests.
- Correctness-sensitive boundaries: build reproducibility, permission comparison between versions, signing, and the index format.
- Never claim a build, signature, push, or CI run succeeded unless it was actually observed.

## Project notes

- Default branch: `main`.
