# Skill Install Sources

This file explains where the listed Skills come from and how another user can install the same capability surface as safely as possible.

Important: this repository does **not** vendor third-party Skill bodies. It shares one original Skill, `clarify-before-execute`, plus a manifest and inventory that point to upstream sources.

## Quick Install

For most users, install the original workflow Skill only:

```powershell
.\install.ps1
```

This copies:

```text
skills/clarify-before-execute -> ~/.codex/skills/clarify-before-execute
```

To also print/install the known ECC source path:

```powershell
.\install.ps1 -WithECC
```

## Source Groups

### 1. Byte-Brane Original Skill

- Source: `https://github.com/L3NNYIN/Byte-Brane`
- Path: `agent-workflows/clarify-before-execute/skills/clarify-before-execute`
- License/status: shared by this repository.
- Installability: direct copy.
- Purpose: teaches an agent to clarify requirements, pick Skills/CLI/tools, present a plan, ask for confirmation, then execute and verify.

### 2. Everything Claude Code / ECC Skills

- Upstream: `https://github.com/affaan-m/everything-claude-code`
- Package: `ecc-universal`
- Local evidence: many installed `.agents/skills` and some `.codex/skills` overlap with ECC-style workflow Skills.
- License observed locally: MIT in the checked-out upstream repository.
- Installability: install from upstream, not from this repository.
- Typical command:

```powershell
npx -y ecc-universal
```

Depending on the upstream version and harness, users may need to run ECC's own installer or follow the upstream README.

### 3. Codex System Skills

Examples:

- `imagegen`
- `openai-docs`
- `skill-creator`
- `skill-installer`
- `plugin-creator`

Source: bundled with Codex/System Skill packages.

Installability: not installed from this repository. They are provided by the user's Codex environment.

### 4. OpenAI / Codex Plugin Skills

Examples:

- Browser plugin Skill
- GitHub plugin Skills
- Netlify plugin Skills
- Documents / Spreadsheets / Presentations runtime Skills

Source: Codex plugins and primary runtime packages.

Installability: install or enable the corresponding Codex plugin/connector. Do not copy cached plugin files from another user's machine.

### 5. User/Community Skills With Unknown Or Mixed Origins

Examples include many `agency-*`, `dbs-*`, media, marketing, and platform-specific Skills.

Source: local user Skill directories such as `~/.codex/skills` and `~/.agents/skills`.

Installability: listed for discovery only unless the original source and license are known. If you want to redistribute any of these, locate the upstream repository and verify the license first.

## Why Not Install Everything Automatically?

Because "all installed Skills" may include:

- system-provided files
- plugin cache files
- third-party copyrighted content
- private or user-specific workflow material
- machine-specific paths and configuration

The safe approach is:

1. Install `clarify-before-execute` directly from this repository.
2. Install ECC from its upstream source if desired.
3. Install official Codex plugins through Codex/plugin tooling.
4. Use `SKILLS_INVENTORY.md` as a capability map, not as a redistribution bundle.

