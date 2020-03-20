# case $1 in 
# 1) echo "JUN";;
# 2) echo "FEB";;
# esac
while read user
do 
 echo $user
done < $1