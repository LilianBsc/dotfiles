#!/usr/bin/env bash
# Install Matt Pocock's engineering skills (https://aihero.dev, mattpocock/skills)
# into the Mistral Vibe global skills directory.
#
# Portable: works on any Linux/macOS machine. The `skills` CLI requires
# Node >= 22; if the system Node is older, a user-local Node 22 is used
# (or downloaded on first run, no sudo needed). Re-run any time to pull
# the latest versions.
set -euo pipefail

NODE_MAJOR_REQUIRED=22
NODEJS_INSTALL_DIR="${HOME}/.local/lib/nodejs"
VIBE_SKILLS_DIR="${HOME}/.vibe/skills"

node_major() {
  command -v node >/dev/null 2>&1 || echo 0
  node --version 2>/dev/null | sed 's/^v//' | cut -d. -f1
}

find_local_node22() {
  local candidate
  for candidate in "${NODEJS_INSTALL_DIR}"/node-v22*/bin/node; do
    if [ -x "${candidate}" ]; then
      dirname "${candidate}"
      return 0
    fi
  done
  return 1
}

download_node22() {
  local arch
  case "$(uname -m)" in
    x86_64|amd64) arch=x64 ;;
    aarch64|arm64) arch=arm64 ;;
    *)
      echo "Error: unsupported architecture $(uname -m) for Node download." >&2
      exit 1
      ;;
  esac
  local version tarball
  version="$(curl -fsSL https://nodejs.org/dist/latest-v22.x/ \
    | grep -o "node-v22[0-9.]*-linux-${arch}.tar.gz" | head -1)"
  if [ -z "${version}" ]; then
    echo "Error: could not resolve the latest Node 22 release." >&2
    exit 1
  fi
  echo "Downloading Node ${version} to ${NODEJS_INSTALL_DIR} ..."
  mkdir -p "${NODEJS_INSTALL_DIR}"
  tarball="$(mktemp)"
  curl -fsSL -o "${tarball}" "https://nodejs.org/dist/latest-v22.x/${version}"
  tar -xzf "${tarball}" -C "${NODEJS_INSTALL_DIR}"
  rm -f "${tarball}"
  find_local_node22
}

if ! command -v curl >/dev/null 2>&1; then
  echo "Error: curl is required (used for the Node fallback download)." >&2
  exit 1
fi

if [ "$(node_major)" -ge "${NODE_MAJOR_REQUIRED}" ]; then
  echo "Using system Node $(node --version)."
elif NODE_BIN_DIR="$(find_local_node22)"; then
  echo "Using local Node $("${NODE_BIN_DIR}/node" --version) from ${NODE_BIN_DIR}."
  export PATH="${NODE_BIN_DIR}:${PATH}"
else
  NODE_BIN_DIR="$(download_node22)"
  echo "Using downloaded Node $("${NODE_BIN_DIR}/node" --version)."
  export PATH="${NODE_BIN_DIR}:${PATH}"
fi

mkdir -p "${VIBE_SKILLS_DIR}"

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

echo "Done. Skills installed under ${VIBE_SKILLS_DIR}."
echo "Run /reload inside Vibe (or restart it) to pick them up."
