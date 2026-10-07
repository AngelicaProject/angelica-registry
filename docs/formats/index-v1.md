# Index v1

The publish workflow writes `index.json` and its detached signature `index.json.sig`. The host reads only an index whose signature verifies against the registry key it ships with.

```json
{
  "index": 1,
  "generated": "2026-10-07T12:00:00Z",
  "plugins": [
    {
      "id": "harmonia",
      "name": "Harmonia",
      "description": "Shows the game in another language with community translations.",
      "versions": [
        {
          "version": "0.2.0",
          "api": "1.0",
          "package": "harmonia-0.2.0.angelica",
          "sha256": "…",
          "permissions": { "game.hook": ["excel.store_row.hash_table"], "network": ["github.com"] },
          "entries": { "required": ["excel.store_row.hash_table"], "optional": [] }
        }
      ],
      "withdrawn": []
    }
  ]
}
```

The `permissions` and `entries` of a version are copied from the manifest in its package, so the catalog can show them before downloading. The host checks that the downloaded package's manifest equals them and its hash equals `sha256`.
