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
                                :public => true,
                                :private => '10.172.88.10'
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
                                :public => true,
                                :private => '10.172.88.10'
                        }
                }
        }
    }
]

AWS = {
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


count = 0

SERVERS.each do |server|
        if count < AWS[:subnets].length
        then
                puts AWS[:subnets][count][:id]
                count = count + 1
        else
                count = 0
                puts AWS[:subnets][count][:id]
        end
end