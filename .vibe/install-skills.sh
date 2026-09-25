#!/usr/bin/env bash
# Install Matt Pocock's engineering skills (https://aihero.dev, mattpocock/skills)
# into the Mistral Vibe global skills directory (~/.vibe/skills/).
# Requires node and npx. Re-run any time to pull the latest versions.
set -euo pipefail

npx -y skills@latest add mattpocock/skills \
  --global \
  --agent mistral-vibe \
  --yes \
  --skill ask-matt \
  --skill codebase-design \
  --skill code-review \
  --skill diagnosing-bugs \
  --skill domain-modeling \
  --skill grilling \
  --skill grill-me \
  --skill grill-with-docs \
  --skill handoff \
  --skill implement \
  --skill improve-codebase-architecture \
  --skill prototype \
  --skill research \
  --skill resolving-merge-conflicts \
  --skill setup-matt-pocock-skills \
  --skill tdd \
  --skill teach \
  --skill to-questionnaire \
  --skill to-spec \
  --skill to-tickets \
  --skill triage \
  --skill wait-what \
  --skill wayfinder \
  --skill wizard \
  --skill writing-for-agents
