
SERVERS = [
    {
	:role => 'master',
	:hostname => 'jenkins-master-1.madisonmk.com',
	:aws => {
		:ec2 => {
			:type => 't2.micro',
			:keypair => 'KP-digitelts-pro-eu-central-1',
			:securitygroups => [
				'sg-a7ad6dcd'
			]
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

AWS = {
        :credentials => {
            :region => 'eu-west-1',
            :keyid => '',
            :accesskey => ''   
        },
        :vpc => {
            :id => 'vpc-8decd1e5',
            :subnets => [
                    {
                            :id => 'subnet-5c6cad37',
                            :cidr => '10.172.88.0/24'
                    },
                    {
                            :id => 'subnet-366a6b4c',
                            :cidr => '10.172.89.0/24'
                    },
                    {
                            :id => 'subnet-ee21daa3',
                            :cidr => '10.172.90.0/24'
                    }
            ]
        }
}

