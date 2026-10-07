# Catalog entry v1

`plugins/<id>.toml`, where `<id>` equals the plugin's manifest id:

```toml
entry = 1

[plugin]
id = "harmonia"
repository = "https://github.com/AngelicaProject/Harmonia"
license = "AGPL-3.0-or-later"

[[versions]]
version = "0.2.0"
commit = "0123456789abcdef0123456789abcdef01234567"
path = "."

[[withdrawn]]
version = "0.1.0"
reason = "Corrupted rows of multi-row sheets."
```

- `entry`: format version.
- `plugin.repository`: an HTTPS Git repository URL.
- `versions`: published versions, newest last. `commit` is a full commit id; `path` is the directory of `angelica.toml` in that commit. The version must equal the manifest's version at that commit.
- `withdrawn`: versions the host disables, with the reason shown to players.

An entry is changed only by appending versions or withdrawals; published versions are not edited.
