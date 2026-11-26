# Wren AI

Connects Antigravity to your [Wren AI](https://getwren.ai) projects over
remote MCP. Ask questions in natural language and get answers from your
warehouse through Wren AI's governed semantic layer. You sign in with your
Wren AI account, so every answer respects your project access and data
policies.

## What you can do

- **Ask in plain language.** Wren AI turns the question into SQL using your
  project's models, metrics and business rules, runs it, and summarizes the
  result.
- **Check the SQL.** Get the generated SQL, adjust it, and run it for raw rows
  or a summary.
- **Chart the result.** Turn any answer into a chart.
- **Follow up.** Follow-up questions keep the context of the conversation.
- **Flag wrong answers.** Tell the agent an answer is wrong and it reports it
  to your project admins, so they can fix the semantic layer.

## Example questions

- List my Wren AI projects and what each one covers
- What were our top 10 products by revenue last quarter?
- How did monthly active customers change over the past year? Show a chart.
- Break down last month's orders by region and channel

## Get started

1. Install **Wren AI** from the plugin marketplace.
2. Set `WREN_MCP_URL`:

   | Deployment | `WREN_MCP_URL` |
   |---|---|
   | Wren AI Cloud | `https://cloud.getwren.ai/api/mcp` |
   | Self-hosted | `<your Wren AI origin>/api/mcp` |

3. Ask a data question. On first use, Antigravity opens a browser window to
   sign in to Wren AI.

## License

Apache License 2.0. See [LICENSE](LICENSE).
