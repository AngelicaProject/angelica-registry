# Catalog principles

1. **Built from source.** Every published package is built by the registry's workflow from the source commit in its entry. Submitters never upload binaries.
2. **Reproducible.** The build pins its toolchain, so anyone can rebuild a package from its entry and get the same bytes.
3. **Signed by the registry.** The index and every package are signed by the registry's key. The host installs only what the index signs.
4. **Permissions are reviewed, not trusted.** The sandbox enforces permissions, so review does not need to find hidden system access; it decides whether the permissions a plugin asks for are justified and acceptable for players.
5. **Changes in permissions are explicit.** An update that adds a permission, a map entry, a network domain, or an imported plugin interface is reviewed as a change of trust.
6. **Withdrawal is possible.** A published version can be withdrawn; the host disables a withdrawn version and offers the latest acceptable one.
