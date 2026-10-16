# Review of submissions

Only what does not merge by itself reaches a maintainer: a new plugin that acts for the player, uses the internet, or sees other players (by the classes of [permissions](https://github.com/AngelicaProject/angelica/blob/main/docs/architecture/permissions.md#classes), with the classes of game map domains read from the released map) or names a domain the released map does not describe; a change of repository or author key; and an update that declares a permission, a game map domain it reads, acts in, or changes through Lens, a host, or more memory than the catalog version. A new plugin that only shows things to the player or changes what the player sees merges by itself. The review in the Check run's summary lists the plugin's permissions and hosts and what it adds, game map domains included.

## What a maintainer checks

- **The permissions match the plugin's purpose,** as its description tells players. Every permission and game map domain is needed by something the plugin does.
- **Network hosts** belong to the plugin's author or to a service the plugin names.
- **Acting for the player and reaching other players** are said in the description, so players see them before installing.
- **The source at the tag** is the plugin the description promises; the sandbox enforces permissions, so the review decides whether they are justified, not whether the code escapes.

## Refusal

A submission is refused when a permission is not justified or the description hides what the plugin does with it. The refusal names the permission.
