
hosts=(ecs-6dfb-0006 ecs-6dfb-0005 ecs-6dfb-0003 ecs-6dfb-0002)
user=$USER

#通过遍历下标获取数组元素
for i in ${!hosts[@]}
do
    echo  -e '\r\n######## '${hosts[$i]}' ########'
    ssh $user@${hosts[$i]} $@
done


