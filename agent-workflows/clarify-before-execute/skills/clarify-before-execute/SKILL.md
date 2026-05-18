---
name: clarify-before-execute
description: Use this workflow when a user asks an agent to do work but the scope, output, tools, or risks are not fully clear. The agent must ask what work is needed, clarify fuzzy requirements, select relevant skills and CLI/tools, present an execution plan, and ask for confirmation before making changes, publishing, pushing, installing, or taking external actions.
---

# Clarify Before Execute

Use this Skill as a default collaboration workflow for agentic work. It is designed for situations where the user wants help but the exact output, constraints, or tool path may still be unclear.

## Core Rule

Do not execute irreversible, external, or file-modifying actions until the user has confirmed the proposed plan.

This includes:

- writing or editing files
- installing dependencies
- running paid or networked jobs
- posting, publishing, pushing, merging, deploying, or changing third-party resources
- modifying credentials, secrets, account settings, or production data

Reading local context, inspecting files, and drafting a plan are allowed when they are needed to understand the task.

## Standard Flow

### 1. Ask For The Work

Start by identifying the current job:

```text
现在要做的是什么工作？你希望最终交付什么？
```

If the user already described the work, restate it briefly and identify the intended deliverable.

### 2. Clarify Fuzzy Requirements

If the request is vague, ask focused questions before execution. Prefer a few high-impact questions over a long questionnaire.

Clarify:

- final deliverable format
- audience or user
- deadline or time range
- source materials
- constraints and must-haves
- examples or style preferences
- what should not be done
- whether external actions are allowed

When available, use a question-framing or discovery Skill such as:

- `dbs-good-question`
- `agency-discovery-coach`
- `dbs-deconstruct`
- `agency-reality-checker`
- `strategic-compact`

### 3. Analyze The Task

Before selecting tools, classify the work:

- coding, debugging, testing, review, documentation
- research, market analysis, citation work
- design, frontend, media, image, presentation
- spreadsheet, document, PDF, contract, report
- social content, campaign planning, platform publishing
- automation, reminder, workflow, connector work
- GitHub, Netlify, or other external service operation

Identify risks:

- privacy or sensitive data
- copyright or licensing
- medical, legal, financial, or security stakes
- destructive local changes
- external publishing or account actions
- network access or paid API usage

### 4. Select Skills And Tools

Choose the smallest useful set of Skills and tools. Explain why each is relevant.

Examples:

- Code feature: `tdd-workflow`, `coding-standards`, `verification-loop`, `security-review`
- Frontend: `frontend-patterns`, `e2e-testing`, Browser plugin
- API/backend: `api-design`, `backend-patterns`, `security-review`
- Research: `deep-research`, `exa-search`, `documentation-lookup`
- Xiaohongshu/content: `agency-xiaohongshu-specialist`, `content-engine`, `brand-voice`
- DOCX/PDF: `documents`, `pdf`, `spreadsheets`
- Presentations: `presentations`, `frontend-slides`
- GitHub workflow: GitHub plugin or `git`/`gh` CLI, with user approval before push/publish

### 5. Present The Execution Plan

Before acting, give a concise plan:

```text
我建议这样执行：
1. 读取/分析这些材料：...
2. 调用这些 Skill/CLI：...
3. 产出这个结果：...
4. 验证方式：...

这一步会/不会：
- 写文件
- 联网
- 安装依赖
- 发布或推送
- 修改第三方系统

是否按这个方案执行？
```

### 6. Execute Only After Confirmation

After the user confirms, proceed with the smallest safe action that advances the goal.

During execution:

- keep updates short and concrete
- avoid unrelated refactors
- do not revert user changes
- stop and ask if new risks appear
- preserve source materials unless the user asked for edits

### 7. Verify

Run the appropriate checks:

- tests, lint, typecheck, build
- document render or visual QA
- spreadsheet validation
- browser screenshot/interaction checks
- citation/source checks
- `git diff` before commit or push

If a check cannot be run, say so plainly.

### 8. Final Response

Summarize:

- what was done
- what files or artifacts were created/changed
- what Skills/tools were used
- what verification passed
- what remains open

Keep the final answer concise and actionable.

## Execution Approval Language

Use explicit confirmation gates for higher-risk actions:

```text
我可以继续执行，但这会写入文件。是否确认？
```

```text
这一步会 push 到 GitHub。请确认是否执行推送。
```

```text
这一步需要联网/安装依赖。是否允许？
```

## Default Assumptions

If the user wants a document, spreadsheet, slide deck, content calendar, or code change, assume they want a concrete artifact after confirmation.

If the user asks for brainstorming, planning, review, or options, do not implement unless they ask you to proceed.

If the user asks to share or publish something externally, prepare the local artifact first, then confirm before publishing.

