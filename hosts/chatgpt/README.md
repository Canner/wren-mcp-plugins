# Wren AI for ChatGPT and Codex

Connects ChatGPT and Codex to your [Wren AI](https://getwren.ai) projects over
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
- **Flag wrong answers.** Say an answer is wrong and it is reported to your
  project admins, so they can fix the semantic layer.

## Example questions

- List my Wren AI projects and what each one covers
- What were our top 10 products by revenue last quarter?
- How did monthly active customers change over the past year? Show a chart.

## Self-hosted Wren AI

This plugin connects to Wren AI Cloud. For a self-hosted install, add a
custom MCP server in ChatGPT with the URL `<your Wren AI origin>/api/mcp`.

## License

Apache License 2.0. See [LICENSE](LICENSE).
