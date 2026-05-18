# Skill Capability Guide

This guide explains what the Skill families in `SKILLS_INVENTORY.md` are for. It is written for people who want to understand the capability map before installing anything.

## Daily Workflow Guardrail

### `clarify-before-execute`

Use this as the default collaboration protocol. It makes the agent:

- ask what work needs to be done
- clarify fuzzy requirements
- select relevant Skills and CLI/tools
- explain what it will read, write, install, publish, or push
- ask for confirmation before execution
- verify the result and report clearly

This is the one Skill this repository directly shares and supports.

## Engineering Skills

These help with software development tasks:

- `tdd-workflow`: write failing tests first, implement, refactor, and verify coverage.
- `coding-standards`: keep code readable, scoped, and maintainable.
- `backend-patterns`: API, database, caching, and server-side architecture.
- `frontend-patterns`: React/Next.js/frontend implementation patterns.
- `api-design`: REST API shapes, status codes, errors, pagination, versioning.
- `e2e-testing`: browser-based end-to-end testing workflows.
- `verification-loop`: build, lint, typecheck, test, and security verification.
- `security-review`: review code and workflows for common security issues.

Best for: coding tasks, bug fixes, refactors, reviews, CI/build issues, and production-readiness checks.

## Research And Documentation Skills

These help agents ground answers in sources and produce structured documents:

- `deep-research`: multi-source research and synthesis.
- `exa-search`: neural/web search workflows when available.
- `documentation-lookup`: API and framework documentation lookup.
- `documents`: create/edit/review DOCX files with render-and-verify discipline.
- `pdf`: PDF extraction, review, and transformation workflows.
- `spreadsheets`: spreadsheet creation, analysis, and export.
- `presentations`: slide deck creation and verification.

Best for: reports, briefs, docs, spreadsheets, slide decks, source-backed research, and file conversion.

## Content And Marketing Skills

These help turn source material into platform-native content:

- `content-engine`: social posts, scripts, newsletters, launch sequences, content calendars.
- `brand-voice`: build a voice profile from real examples.
- `social-content`: social content planning and drafting.
- `agency-xiaohongshu-specialist`: Xiaohongshu/Red content strategy, calendar, keywords, and community engagement.
- `agency-seo-specialist`: SEO strategy and content planning.
- `agency-trend-researcher`: trend scanning and market timing.
- `market-research`: market, competitor, and audience research.

Best for: campaign planning, content calendars, Xiaohongshu/LinkedIn/X/TikTok drafts, messaging, and brand narrative.

## Business, Sales, And Strategy Skills

These help with commercial planning and execution:

- `agency-product-manager`: product framing, prioritization, and requirements.
- `agency-discovery-coach`: clarify user needs and problem statements.
- `agency-account-strategist`: account planning and client relationship strategy.
- `agency-sales-coach`: sales messaging and conversation improvement.
- `agency-proposal-strategist`: proposal structure and deal narratives.
- `investor-materials`: investor decks, memos, one-pagers, and related materials.
- `sales-enablement`: sales assets and buyer-facing collateral.

Best for: offers, proposals, client plans, go-to-market, investor materials, and sales workflows.

## Design, UX, And Media Skills

These help agents shape visual and experiential work:

- `agency-ui-designer`: UI concepting and design critique.
- `agency-ux-researcher`: user research planning and synthesis.
- `agency-ux-architect`: interaction structure and UX flows.
- `design-md`: design.md workflows and design system documentation.
- `figma`: Figma workflow guidance when available.
- `imagegen`: image generation workflows.
- `fal-ai-media`: AI media generation workflows.

Best for: UI design, creative direction, visual assets, design docs, image/video generation, and design QA.

## Operations, Automation, And Infrastructure Skills

These support reliability and repeatable operations:

- `agency-devops-automator`: deployment and infrastructure automation.
- `agency-sre-site-reliability-engineer`: reliability, incident, and observability thinking.
- `agency-workflow-architect`: process and automation design.
- `agency-automation-governance-architect`: controls and governance for automations.
- `mcp-server-patterns`: MCP server design and integration patterns.
- `eval-harness`: evaluation-driven development and test harnesses.

Best for: CI/CD, automations, recurring workflows, integrations, reliability, and agent evaluation.

## Platform And Regional Marketing Skills

These specialize in specific platforms or markets:

- `agency-xiaohongshu-specialist`: Xiaohongshu content and community strategy.
- `agency-douyin-strategist`: Douyin content strategy.
- `agency-bilibili-content-strategist`: Bilibili content strategy.
- `agency-wechat-official-account-manager`: WeChat official account operations.
- `agency-weibo-strategist`: Weibo strategy.
- `agency-zhihu-strategist`: Zhihu strategy.
- `agency-china-market-localization-strategist`: China market localization.

Best for: China-facing social platforms, education marketing, community growth, and local-market adaptation.

## DBS And Question-Clarification Skills

The `dbs-*` Skills are useful for turning vague business problems into concrete agent tasks:

- `dbs-good-question`: clarify fuzzy problems and decide whether an agent can solve them.
- `dbs-diagnosis`: diagnose business or strategic problems.
- `dbs-deconstruct`: break a complex problem into parts.
- `dbs-action`: turn analysis into action plans.
- `dbs-content`: content-oriented business thinking.

Best for: fuzzy strategy, problem diagnosis, "what should we do next?" questions, and structured decision-making.

## How To Choose

Use this simple router:

- unclear task -> `clarify-before-execute` + `dbs-good-question`
- code change -> `tdd-workflow` + `coding-standards` + `verification-loop`
- web/frontend -> `frontend-patterns` + `e2e-testing`
- API/backend -> `api-design` + `backend-patterns` + `security-review`
- research -> `deep-research` + `documentation-lookup`
- DOCX/PDF/spreadsheet -> `documents` / `pdf` / `spreadsheets`
- Xiaohongshu/content -> `agency-xiaohongshu-specialist` + `content-engine`
- business proposal -> `agency-proposal-strategist` + `sales-enablement`

