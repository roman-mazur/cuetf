package data

#aws_network_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_network_interface")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?: #timeouts
		arn?:      string
		association?: [...close({
			allocation_id?:     string
			association_id?:    string
			carrier_ip?:        string
			customer_owned_ip?: string
			ip_owner_id?:       string
			public_dns_name?:   string
			public_ip?:         string
		})]
		attachment?: [...close({
			attachment_id?:      string
			device_index?:       number
			instance_id?:        string
			instance_owner_id?:  string
			network_card_index?: number
		})]
		availability_zone?: string
		description?:       string
		ena_srd_specification?: [...close({
			ena_srd_enabled?: bool
			ena_srd_udp_specification?: [...close({
				ena_srd_udp_enabled?: bool
			})]
		})]
		id?:             string
		interface_type?: string
		ipv6_addresses?: [...string]
		mac_address?:      string
		outpost_arn?:      string
		owner_id?:         string
		private_dns_name?: string
		private_ip?:       string
		private_ips?: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:       string
		requester_id?: string
		security_groups?: [...string]
		subnet_id?: string
		tags?: [string]: string
		vpc_id?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
