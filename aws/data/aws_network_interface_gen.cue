package data

#aws_network_interface: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_network_interface")
	close({
		arn?: string
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
			attachment_id?:     string
			device_index?:      number
			instance_id?:       string
			instance_owner_id?: string
		})]
		availability_zone?: string
		description?:       string
		id?:                string
		interface_type?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		ipv6_addresses?: [...string]
		mac_address?: string
		outpost_arn?: string
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:         #timeouts
		owner_id?:         string
		private_dns_name?: string
		private_ip?:       string
		private_ips?: [...string]
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
