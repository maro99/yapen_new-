#!/usr/bin/env bash

# .secrets starging area에 추가.
git add -f .secrets/

# eb deploy 실행.
eb deploy --profile fc-8th-eb --staged

# .secrets와 requirements를 staging area에서 제거
git reset HEAD .secrets/
