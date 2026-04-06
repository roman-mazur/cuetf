package data

#aws_eip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_eip")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		timeouts?:                   #timeouts
		arn?:                        string
		association_id?:             string
		carrier_ip?:                 string
		customer_owned_ip?:          string
		customer_owned_ipv4_pool?:   string
		domain?:                     string
		id?:                         string
		instance_id?:                string
		ipam_pool_id?:               string
		network_interface_id?:       string
		network_interface_owner_id?: string
		private_dns?:                string
		private_ip?:                 string
		ptr_record?:                 string
		public_dns?:                 string
		public_ip?:                  string
		public_ipv4_pool?:           string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		tags?: [string]: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})

	#timeouts: close({
		read?: string
	})
}
