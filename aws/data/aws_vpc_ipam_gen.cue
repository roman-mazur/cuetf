package data

#aws_vpc_ipam: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam")
	close({
		arn?:                                       string
		default_resource_discovery_association_id?: string
		default_resource_discovery_id?:             string
		description?:                               string
		enable_private_gua?:                        bool
		id!:                                        string
		ipam_region?:                               string
		operating_regions?: [...close({
			region_name?: string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                               string
		owner_id?:                             string
		private_default_scope_id?:             string
		public_default_scope_id?:              string
		resource_discovery_association_count?: number
		scope_count?:                          number
		state?:                                string
		state_message?:                        string
		tags?: [string]: string
		tier?: string
	})
}
