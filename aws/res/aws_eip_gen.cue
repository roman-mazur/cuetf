package res

#aws_eip: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_eip")
	close({
		address?:                   string
		allocation_id?:             string
		arn?:                       string
		associate_with_private_ip?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		association_id?:           string
		carrier_ip?:               string
		customer_owned_ip?:        string
		customer_owned_ipv4_pool?: string
		domain?:                   string
		id?:                       string
		instance?:                 string
		timeouts?:                 #timeouts
		ipam_pool_id?:             string
		network_border_group?:     string
		network_interface?:        string
		private_dns?:              string
		private_ip?:               string
		ptr_record?:               string
		public_dns?:               string
		public_ip?:                string
		public_ipv4_pool?:         string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		delete?: string
		read?:   string
		update?: string
	})
}
