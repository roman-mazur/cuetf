package data

#aws_vpc_ipams: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_vpc_ipams")
	close({
		filter?: matchN(1, [#filter, [...#filter]])
		ipam_ids?: [...string]
		ipams?: [...close({
			arn?:                                       string
			default_resource_discovery_association_id?: string
			default_resource_discovery_id?:             string
			description?:                               string
			enable_private_gua?:                        bool
			id?:                                        string
			ipam_region?:                               string
			metered_account?:                           string
			operating_regions?: [...close({
				region_name?: string
			})]
			owner_id?:                             string
			private_default_scope_id?:             string
			public_default_scope_id?:              string
			resource_discovery_association_count?: number
			scope_count?:                          number
			state?:                                string
			state_message?:                        string
			tier?:                                 string
		})]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#filter: close({
		name!: string
		values!: [...string]
	})
}
