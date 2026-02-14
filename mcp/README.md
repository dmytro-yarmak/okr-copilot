# MCP Integrations

Connect your OKR co-pilot to external tools using Model Context Protocol (MCP).

## Available Integrations

### Google Docs
Connect to collaborative OKR documents.

```json
{
  "mcpServers": {
    "google-drive": {
      "command": "npx",
      "args": ["-y", "@anthropic/mcp-google-drive"]
    }
  }
}
```

### Jira
Link OKRs to project execution and track progress.

```json
{
  "mcpServers": {
    "jira": {
      "command": "npx",
      "args": ["-y", "@anthropic/mcp-jira"],
      "env": {
        "JIRA_URL": "https://your-org.atlassian.net",
        "JIRA_EMAIL": "your-email@example.com",
        "JIRA_API_TOKEN": "your-api-token"
      }
    }
  }
}
```

### Oboard (Custom)
For Oboard OKR platform integration, you'll need to build a custom MCP server.

See `oboard-mcp/` for implementation guide.

## Setup

1. Add the MCP configuration to your Claude settings
2. Authenticate with the respective services
3. Use the tools within your OKR planning sessions

## Use Cases

| Integration | Use Case |
|-------------|----------|
| Google Docs | Draft and collaborate on OKRs in shared documents |
| Jira | Create epics/stories from Key Results, track execution |
| Oboard | Sync OKRs with your OKR management platform |
