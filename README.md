# .dots

## Installation

```bash
nix-shell -p git git home-manager just
git clone git@github.com:lixaft/.dots /tmp/.dots
just -d /tmp/.dots --justfile /tmp.dots/justfile init $(hostname)
```
