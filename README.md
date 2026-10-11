# Angelica registry

The catalog of plugins for [Angelica](https://github.com/AngelicaProject/angelica). Every plugin here is built by the registry's CI from the source at a tag of its repository, signed, and listed in the signed index that the Catalog tab of the Angelica menu reads.

## Submitting a plugin

Release the plugin through its own CI (a tag `v<version>`; `angelica plugin new` sets this up), then open a pull request that adds or updates `plugins/<id>.toml` with the plugin's repository, the tag, and your author key ([format](https://github.com/AngelicaProject/angelica/blob/main/docs/formats/catalog-v1.md)). An update of a plugin already here that declares nothing more merges by itself; a new plugin and more permissions are reviewed by a maintainer. See the [documentation](./docs/README.md).

## License

The registry is licensed under the [GNU Affero General Public License v3.0](./LICENSE). Each plugin keeps its own license.
