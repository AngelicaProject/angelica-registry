# Format specifications

- [`entry-v1.md`](./entry-v1.md) — a catalog entry, `plugins/<id>.toml`.
- [`index-v1.md`](./index-v1.md) — the signed index the host reads.

The plugin's own manifest is owned by the `angelica` repository: [plugin manifest v1](https://github.com/AngelicaProject/angelica/blob/main/docs/formats/plugin-manifest-v1.md).

Once a format is released, an incompatible change requires a new version. Readers refuse a version they do not know.
