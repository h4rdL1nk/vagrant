
SERVERS = [
    {
	:role => 'master',
	:hostname => 'jenkins-master-1.madisonmk.com',
	:aws => {
		:ec2 => {
			:type => 't2.micro',
			:keypair => 'KP-inftel-pro',
			:securitygroups => [
				'sg-a7ad6dcd'
			],
			:ami => {
				:id => 'ami-98043785',
				:os => 'debian',
				:ssh => {
					:user => 'admin'
				}	
			},
			:network => {
				:subnet => 'subnet-5c6cad37',
				:public => true,
				:private => '10.172.88.24'
			}
		}
	}
    }
]

