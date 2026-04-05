#!/bin/bash
echo "=== Running Security Scan for Keith Hodo Portfolio ==="
# Search for potential secrets (AWS Keys, etc.)
grep -rE "AKIA[0-9A-Z]{16}" . --exclude-dir=.git
grep -rE "secret|key|password|token" . --exclude-dir=.git --exclude-dir=scripts --exclude=README.md --exclude=LICENSE
echo "Scan complete."
