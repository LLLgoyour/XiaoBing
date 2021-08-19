#!/bin/bash
git add .
echo "请输入您对本次提交修改的描述："
read remark
git commit -a -m "${remark}"
echo "正在拉取远端代码，您可能需要手动合并冲突（如果有）...\n"
git pull origin master
echo "正在将本地修改提交到远端...\n"
git push origin master
echo "---操作完成---"