# Clarify Before Execute Agent Workflow

This repository shares a lightweight agent workflow for working with Codex, Claude Code, Cursor, or similar coding/operations agents.

The core idea is simple:

> Do not execute before the agent understands the work, selects the right skills/tools, explains the plan, and receives confirmation.

## What Is Included

- `skills/clarify-before-execute/SKILL.md`  
  A reusable Skill that teaches an agent to clarify fuzzy requests, map the work to relevant skills/CLIs, and ask for execution approval before acting.

- `skills/clarify-before-execute/agents/openai.yaml`  
  UI metadata for environments that support OpenAI-style Skill metadata.

- `SKILLS_INVENTORY.md`  
  A local inventory of installed Skills, their source locations, short descriptions, and whether they are suitable to share directly.

- `SKILL_CAPABILITY_GUIDE.md`  
  A plain-language explanation of what the Skill families do and when to use them.

- `SKILL_INSTALL_SOURCES.md`  
  A source map explaining which Skills can be installed from this repo, which should come from ECC upstream, and which require plugin/system installation.

- `skills-manifest.json`  
  A machine-readable source manifest.

- `install.ps1` / `install.sh`  
  One-command installers for the original `clarify-before-execute` Skill. Optional ECC installation is offered through upstream only.

## Workflow Summary

1. Ask what work needs to be done.
2. Clarify fuzzy requirements before acting.
3. Analyze the task type, risks, expected output, and constraints.
4. Select relevant Skills, plugins, CLI tools, or connectors.
5. Present an execution plan.
6. Explicitly state whether the agent will read files, write files, use the network, install dependencies, publish, push, or modify third-party systems.
7. Ask whether to execute.
8. Execute only after confirmation.
9. Verify the result and summarize what changed.

## Recommended Use

Copy the `skills/clarify-before-execute` folder into your agent's Skill directory, or paste the `SKILL.md` contents into your project guidance.

For Codex/ECC-style setups, keep this Skill loaded as a daily workflow guardrail. It is especially useful for ambiguous business, content, research, design, automation, and code tasks.

## One-Command Install

Windows PowerShell:

```powershell
.\install.ps1
```

macOS/Linux:

```bash
bash install.sh
```

Optional ECC upstream prompt:

```powershell
.\install.ps1 -WithECC
```

```bash
bash install.sh --with-ecc
```

The installer does not copy third-party plugin cache files or unknown-origin Skills.

## Sharing Policy

This package intentionally does not vendor third-party Skill bodies. The inventory lists third-party Skills by name, source, and purpose only. Before redistributing any third-party Skill content, check its original license and source repository.
