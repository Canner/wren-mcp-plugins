# Wren AI MCP plugins

Plugins that connect AI agents to [Wren AI](https://getwren.ai) over its
remote MCP server. Every host shares one analyst skill and signs in with
OAuth; there is no API key to configure.

| Host | Directory | Install | Self-hosted Wren AI |
|---|---|---|---|
| Google Antigravity | [`hosts/antigravity`](hosts/antigravity) | Antigravity plugin marketplace | Set `WREN_MCP_URL` |
| Claude Code | [`hosts/claude`](hosts/claude) | Marketplace in `hosts/claude` (see its README) | `/plugin configure wren-ai` |
| ChatGPT and Codex | [`hosts/chatgpt`](hosts/chatgpt) | ChatGPT plugin directory | Add a custom MCP server |

## Layout

```
skills/wrenai-analyst/SKILL.md   the shared skill; edit this one
hosts/<host>/                    what each host installs, committed as is
  skills/                        copy of skills/
  LICENSE                        copy of LICENSE
scripts/sync-hosts.sh            copies skills/ and LICENSE into each host
```

Manifests and MCP config are written by hand in each `hosts/<host>/`, since
no two hosts share a format. The skill is written in host-neutral wording so
every host can use the same file.

## Development

Edit `skills/` or `LICENSE`, then copy them into the hosts and commit the
result. Marketplaces install straight from git, so the copies must be in the
repo. CI fails if they differ.

```bash
scripts/sync-hosts.sh            # copy
scripts/sync-hosts.sh --check    # what CI runs
```

Validate each host:

```bash
agy plugin validate --strict hosts/antigravity
claude plugin validate --strict --profile directory hosts/claude
claude plugin validate --strict hosts/claude/.claude-plugin/marketplace.json
```

ChatGPT has no validator CLI; CI checks `hosts/chatgpt/*.json` against the
[Agent Plugins](https://agent-plugins.org) schemas.

Try a host from a checkout:

```bash
agy plugin install ./hosts/antigravity
claude --plugin-dir ./hosts/claude
```

## License

Apache License 2.0. See [LICENSE](LICENSE).
