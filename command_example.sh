#"!/bin/bash
# ./command_example.sh


file_absolute_path="$(readlink -f "$0")"
echo "$file_absolute_path"

# awkのsinは度数法ではなく弧度法
# 0ラジアン 0度
echo 0 | awk '{print "sin:"sin($1); print "cos:"cos($1)}'
# 1.57ラジアン 90度
echo 1.57 | awk '{print "sin:"sin($1); print "cos:"cos($1)}'
# 3.14ラジアン 180度
echo π | awk '{print "sin:"sin($1); print "cos:"cos($1)}'
echo 0.785 | awk '{print "tan:"sin($1)/cos($1)}'


# 0ラジアン 0度
echo 0 | awk '{print cos($1)}'


# posix準拠のコマンドだと実行できない
# 0ラジアン 0度
# echo 0 | awk '{print tan($1)}'


