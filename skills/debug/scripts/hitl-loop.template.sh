#!/usr/bin/env bash
# Human-in-the-loop reproduction loop.
# Copy this file, replace the example steps, and run it.
#
# The agent runs the script; the human performs only the prompted actions.
# Capture observations, never credentials.

set -euo pipefail

step() {
  printf '\n>>> %s\n' "$1"
  read -r -p "    [Enter when done] " _
}

capture() {
  local var="$1" question="$2" answer
  printf '\n>>> %s\n' "$question"
  read -r -p "    > " answer
  printf -v "$var" '%s' "$answer"
}

# --- replace with the reproduction steps --------------------------------

step "Perform the action that reaches the suspected bug."

capture REPRODUCED "Did the exact symptom occur? (y/n)"

capture OBSERVATION "Describe the observable symptom without secrets:"

# --- end reproduction steps ---------------------------------------------

printf '\n--- Captured ---\n'
printf 'REPRODUCED=%s\n' "$REPRODUCED"
printf 'OBSERVATION=%s\n' "$OBSERVATION"
