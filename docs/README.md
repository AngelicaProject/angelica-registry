# Registry documentation

## Start here

- [Product](./product/README.md) — the rules of the catalog.
- [Architecture](./architecture/README.md) — from a submission to a signed index, and review.
- [Formats](./formats/README.md) — catalog entries and the published index.
- [Development](./development/README.md) — contribution workflow, review, and CI.

## Find documentation by task

| Task | Read first |
| --- | --- |
| Publish or update a plugin | [`architecture/overview.md`](./architecture/overview.md), [`formats/entry-v1.md`](./formats/entry-v1.md) |
| Review a submission | [`architecture/review.md`](./architecture/review.md) |
| Change the published index | [`formats/index-v1.md`](./formats/index-v1.md) |
| Understand a plugin's manifest | [plugin manifest v1](https://github.com/AngelicaProject/angelica/blob/main/docs/formats/plugin-manifest-v1.md) |
| Prepare a branch, commit, or pull request | [`development/git.md`](./development/git.md), [`development/pull-requests.md`](./development/pull-requests.md) |
| Investigate CI | [`development/ci.md`](./development/ci.md) |
| Write or reorganize documentation | [`development/documentation.md`](./development/documentation.md) |

## Source-of-truth rule

Put each durable rule in the document that owns it and link to it elsewhere. Rules about plugins themselves (manifest, permissions, API) belong to the `angelica` repository.
