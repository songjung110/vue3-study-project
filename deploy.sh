#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# 자동 커밋메시지 변수 설정
msg="reBuild `date`"

# dist 및 gitsubmodule 폴더 삭제
rm -rf .git/modules
rm -rf dist

## Git 캐시삭제
git ls-files --stage dist
git rm --cached dist

# gitsubmodule 재연결
git submodule add https://github.com/songjung110/songjung110.github.io.git dist
git submodule update --remote --recursive

# VUE 빌드파일 생성
npm run build

# dist 폴더로 이동
cd dist
#touch .git
#echo gitdir: ../.git/modules/dist > .git
#git checkout 'main'

# 입력 받은 커밋메시지를 이용하여 dist 폴더 push
git add .
git commit -m "$msg"
git push origin main