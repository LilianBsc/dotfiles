# Agent Skills Directory

This directory contains the Mistral Vibe global skills, installed by
`~/.vibe/install-skills.sh`.

## Installed skills

Matt Pocock's engineering skills ([mattpocock/skills](https://github.com/mattpocock/skills)),
one directory per skill with a `SKILL.md`:

ask-matt, codebase-design, code-review, diagnosing-bugs, domain-modeling,
grilling, grill-me, grill-with-docs, handoff, implement,
improve-codebase-architecture, prototype, research, resolving-merge-conflicts,
setup-matt-pocock-skills, tdd, teach, to-questionnaire, to-spec, to-tickets,
triage, wait-what, wayfinder, wizard, writing-for-agents.

## Usage

Skills load on demand when a task matches their description. User-invocable
skills can also be triggered by typing `/skill-name` in the prompt.

## Setup and updates

See `QUICK_START.md` in this directory for the machine-agnostic setup guide.
To install or update on any machine:

```bash
bash ~/.vibe/install-skills.sh
```

Then run `/reload` inside Vibe (or restart it).

## License

The installed skills are from mattpocock/skills; see each skill directory
for its license terms.
