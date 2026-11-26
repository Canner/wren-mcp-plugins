# Wren AI for Claude Code

Connects Claude Code to your [Wren AI](https://getwren.ai) projects over
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
- **Flag wrong answers.** Tell Claude an answer is wrong and it reports it to
  your project admins, so they can fix the semantic layer.

## Install

```
/plugin marketplace add https://raw.githubusercontent.com/Canner/wren-mcp-plugins/main/hosts/claude/.claude-plugin/marketplace.json
/plugin install wren-ai@wren-mcp-plugins
```

The plugin connects to Wren AI Cloud by default. For a self-hosted install,
run `/plugin configure wren-ai` and set the endpoint to
`<your Wren AI origin>/api/mcp`.

On first use, run `/mcp` and sign in to Wren AI in the browser window it
opens.

## Example questions

- List my Wren AI projects and what each one covers
- What were our top 10 products by revenue last quarter?
- How did monthly active customers change over the past year? Show a chart.

## License

Apache License 2.0. See [LICENSE](LICENSE).
