#!/bin/bash

# http://blog.wtlucky.com/blog/2013/05/02/start-write-shell/

# 注意等号两侧无空格
i=0;
# for in 语句
for f in *.png
do 
# ${i} 引用变量，字符串直接拼接不用+
newName=icon_rank_recommend_${i}.png
# 也可以$newName引用，没有歧义的情况下
echo $newName
# 注意：变量引用一定要$
mv $f $newName
## 运算let 开头，或者$[$i++]，不能直接计算
let i++
done;
