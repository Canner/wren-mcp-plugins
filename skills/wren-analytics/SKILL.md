---
name: wren-analytics
description: Answer data questions through Wren AI (governed semantic layer over the user's warehouse). Use for any question about metrics, trends, comparisons or breakdowns that needs numbers from the user's Wren AI projects.
---

# Wren AI analytics

The Wren AI MCP server signs in as the user, so every answer respects their
project membership and data-access policies. Use only its tools for data.

1. **Pick the project.** Call `list_projects` once per conversation. Match the
   question against each project's description, metadata, models and example
   questions. If more than one project could answer, ask the user which one.
   Pass the chosen `projectId` to every other tool.
2. **Answer the question.** Prefer `ask`: Wren generates the SQL from the
   project's semantic layer and business rules, runs it, and summarizes the
   result. Pass the returned `threadId` back on follow-up questions so Wren
   keeps the context.
   - If `ask` returns `needs_clarification`, show the question to the user and
     send their answer with `respond_clarification` (`queryId`, `questionId`,
     `threadId` from that result).
3. **When you need control over the SQL**, call `generate_sql`, adjust it if
   needed using the schema from `get_project_metadata`, then `run_sql` for raw
   rows or `generate_summary` for rows plus a summary. Never invent tables or
   columns that `get_project_metadata` does not list.
4. **Charts.** Call `generate_chart` with the question and the final SQL; it
   returns a rendered chart image. Keep the text answer short and refer to the
   chart.
5. **In the answer**, give every number with what it measures and the time
   window behind it, and show the SQL when the user may want to check it. Do
   not state numbers that did not come from a tool result.
6. **Wrong answers.** If the user says an answer is wrong, use
   `submit_feedback` with what was wrong, so the project's admins can fix the
   semantic layer.
