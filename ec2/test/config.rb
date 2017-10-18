
SERVERS = [
    {
	:rol => 'kamailio',
	:hostname => 'kamailio01',
	:aws => {
		:ec2 => {
			:type => 't2.micro',
			:keypair => 'KP-digitelts-pro-eu-central-1',
			:securitygroup => 'sg-a7ad6dcd',
			:ami => {
				:id => 'ami-98043785',
				:os => 'debian'
			},
			:network => {
				:subnet => 'subnet-5c6cad37',
				:public => true,
				:private => '10.172.88.10'
			}
		}
	}
    },
    {
        :rol => 'kamailio',
        :hostname => 'kamailio02',
        :aws => {
                :ec2 => {
                        :type => 't2.micro',
                        :keypair => 'KP-digitelts-pro-eu-central-1',
                        :securitygroup => 'sg-a7ad6dcd',
                        :ami => {
                                :id => 'ami-98043785',
                                :os => 'debian'
                        },
                        :network => {
				:subnet => 'subnet-366a6b4c',
                                :public => true,
                                :private => '10.172.89.10'
                        }
                }
        }
    },
    {
        :rol => 'kamailio',
        :hostname => 'kamailio03',
        :aws => {
                :ec2 => {
                        :type => 't2.micro',
                        :keypair => 'KP-digitelts-pro-eu-central-1',
                        :securitygroup => 'sg-a7ad6dcd',
                        :ami => {
                                :id => 'ami-98043785',
                                :os => 'debian'
                        },
                        :network => {
				:subnet => 'subnet-ee21daa3',
                                :public => true,
                                :private => '10.172.90.10'
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

