package data

#aws_nat_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_nat_gateway")
	close({
		allocation_id?:        string
		association_id?:       string
		auto_provision_zones?: string
		auto_scaling_ips?:     string
		availability_mode?:    string
		availability_zone_address?: [...close({
			allocation_ids?: [...string]
			availability_zone?:    string
			availability_zone_id?: string
		})]
		connectivity_type?:    string
		id?:                   string
		network_interface_id?: string
		filter?: matchN(1, [#filter, [...#filter]])
		private_ip?: string
		public_ip?:  string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		timeouts?: #timeouts
		regional_nat_gateway_address?: [...close({
			allocation_id?:        string
			association_id?:       string
			availability_zone?:    string
			availability_zone_id?: string
			network_interface_id?: string
			public_ip?:            string
			status?:               string
		})]
		route_table_id?: string
		secondary_allocation_ids?: [...string]
		secondary_private_ip_address_count?: number
		secondary_private_ip_addresses?: [...string]
		state?:     string
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
