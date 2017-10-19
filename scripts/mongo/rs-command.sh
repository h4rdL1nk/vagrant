#!/bin/bash

CMD=$1

case CMD in
	init)
		repset=$2
		master_ip=$3
		js_command="rs.initiate( { _id : '${repset}', members: [ { _id : 0, host : '${master_ip}' } ] })"
		mongo  -u admin -p 12m0nG0AdM1_N00 --eval "${js_command}" admin
		;;	
	add)
		master_ip=$2
		replica_ip=$3
		js_command="rs.add('${replica_ip}')"
		mongo --host ${master_ip}  -u admin -p 12m0nG0AdM1_N00 --eval "${js_command}" admin
		;;
esac

