package res

#aws_eip_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_eip_association")
	close({
		allocation_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:               string
		allow_reassociation?:  bool
		id?:                   string
		instance_id?:          string
		network_interface_id?: string
		private_ip_address?:   string
		public_ip?:            string
	})
}
