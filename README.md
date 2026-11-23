# Wren AI plugin for Google Antigravity

Connects Antigravity to your [Wren AI](https://getwren.ai) projects over
remote MCP. Ask questions in natural language and get answers from your
warehouse through Wren AI's governed semantic layer. You sign in with your
Wren AI account, so every answer respects your project access and data
policies.

## Get started

1. In Antigravity, open Customizations > Plugins, find **Wren AI** and
   install it.
2. Set `WREN_MCP_URL`:

   | Deployment | `WREN_MCP_URL` |
   |---|---|
   | Wren AI Cloud | `https://cloud.getwren.ai/api/mcp` |
   | Self-hosted | `<your Wren AI origin>/api/mcp` |

3. Ask a data question. On first use, Antigravity opens a browser window to
   sign in to Wren AI.

## Development

To try local changes, install the plugin from a checkout:

```bash
git clone https://github.com/Canner/wren-agy-plugin
agy plugin validate --strict ./wren-agy-plugin
agy plugin install ./wren-agy-plugin
```

## License

GNU Affero General Public License v3.0. See [LICENSE](LICENSE).
