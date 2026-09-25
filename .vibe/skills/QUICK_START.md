# Quick Start Guide — Vibe Skills Setup

Setup for the Mistral Vibe agent skills (Matt Pocock's engineering skills).
Follow these steps on any new machine so the same skill set is available
everywhere.

## What gets installed

25 skills from [mattpocock/skills](https://github.com/mattpocock/skills)
into `~/.vibe/skills/`, including: `tdd`, `code-review`, `implement`,
`prototype`, `research`, `wizard`, `wayfinder`, `triage`, `handoff`,
`diagnosing-bugs`, `domain-modeling`, and more.

## Setup on a new machine

### 1. Install Mistral Vibe

```bash
uv tool install mistral-vibe
```

### 2. Copy the skills bootstrap script

Copy `~/.vibe/install-skills.sh` from an existing machine to the same path on
the new machine (or clone it from wherever you keep your dotfiles):

```bash
# from the existing machine
scp ~/.vibe/install-skills.sh user@newmachine:~/.vibe/install-skills.sh
```

### 3. Run the script

```bash
bash ~/.vibe/install-skills.sh
```

The script is self-sufficient and portable:

- Requires only `curl` and `bash` (present on any Linux/macOS box).
- Uses the system Node.js if it is version 22 or newer.
- Otherwise falls back to a user-local Node 22 under
  `~/.local/lib/nodejs/`, downloading it on first run if needed
  (x64 and arm64 supported, no sudo required).
- Re-run it any time to update the skills to their latest versions.

### 4. Reload Vibe

Run `/reload` inside a Vibe session (or restart Vibe) so the new skills are
picked up.

## Using the skills

Skills load automatically when a task matches their description — just ask
normally ("implement this feature test-first", "review this diff"). A
user-invocable skill can also be triggered explicitly by typing
`/skill-name` in the prompt, for example:

```
/tdd add a rate limiter to the API client
/code-review the changes in src/auth
```

## Updating

```bash
bash ~/.vibe/install-skills.sh   # re-runs the installer, pulls latest versions
/reload                          # inside Vibe, to pick them up
```

## Troubleshooting

- **`npx` fails with a syntax error about `styleText`**: the system Node is
  older than 22. The script handles this automatically; if you bypass the
  script, install Node 22+ first.
- **Skill not found after install**: run `/reload` or restart Vibe.
- **Behind a proxy**: make sure `HTTPS_PROXY` is set so `npx` and `curl`
  can reach npm and nodejs.org.
