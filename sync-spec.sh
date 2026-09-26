#!/bin/sh
# Refresh openapi.json from the live document so this copy never drifts.
set -e
curl -fsS -A 'ocolo-agent-api sync' https://www.ocolo.io/api/v1/openapi.json -o openapi.json
python3 -c "import json; json.load(open('openapi.json')); print('openapi.json synced')"
