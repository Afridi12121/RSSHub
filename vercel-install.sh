#!/usr/bin/env bash
set -e

if [ -f pnpm-lock.yaml ]; then
  echo "🧩 Detected pnpm—installing without optional deps"
  pnpm install --ignore-optional
else
  echo "🧩 Falling back to npm—installing without optional deps"
  npm install --no-optional
fi
