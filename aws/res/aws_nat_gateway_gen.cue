package res

#aws_nat_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_nat_gateway")
	close({
		allocation_id?:        string
		association_id?:       string
		connectivity_type?:    string
		id?:                   string
		network_interface_id?: string
		private_ip?:           string
		public_ip?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		timeouts?: #timeouts
		secondary_allocation_ids?: [...string]
		secondary_private_ip_address_count?: number
		secondary_private_ip_addresses?: [...string]
		subnet_id!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
