
SERVERS = [

    {
        :swarm => {
		:role => 'manager',
		:manager => {
			:ip => '10.172.57.240'
		}
        },
        :hostname => 'swarm-test-1',
        :aws => {
            :ec2 => {
                :type => 't2.nano',
                :keypair => 'KP-inftel-pro',
                :securitygroups => [
                    'sg-e966e691'
                ],
                :ami => {
                    :id => 'ami-eed00d97',
                    :os => 'ubuntu',
                    :ssh => {
                        :user => 'ubuntu'
                    }	
                },
                :network => {
                    :subnet => 'subnet-4a0c0f2e',
                    :public => true,
                    :private => '10.172.57.240'
                }
            }
        }
    },
    {
	:swarm => {
        	:role => 'worker',
		:manager => {
			:ip => '10.172.57.240'	
		}
	},
        :hostname => 'swarm-test-2',
        :aws => {
            :ec2 => {
                :type => 't2.nano',
                :keypair => 'KP-inftel-pro',
                :securitygroups => [
                    'sg-e966e691'
                ],
                :ami => {
                    :id => 'ami-eed00d97',
                    :os => 'ubuntu',
                    :ssh => {
                        :user => 'ubuntu'
                    }
                },
                :network => {
                    :subnet => 'subnet-6c50511a',
                    :public => true,
                    :private => '10.172.58.240'
                }
            }
        }
    }
]

