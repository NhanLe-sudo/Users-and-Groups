#!/bin/bash

#Le, Thanh Nhan - le000173@algonquinlive.com

pw_name="cstuser" 
pw_dir="/home/cstuser"
pw_uid=1019
pw_gecos="CST8305 user"
pw_shell="/bin/bash"

i=0
u=19

while [ $i -lt 5 ]
do
	
	u=$((u+1))
	pw_password=$(openssl rand -base64 16)
	pw_uid=$((pw_uid+1))
	pw_gid=$pw_uid
	
	echo "$pw_name$u:$pw_password:$pw_uid:$pw_gid:$pw_gecos:$pw_dir$u:$pw_shell"
	i=$((i+1))
	
done
