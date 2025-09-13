package res

#aws_vpc_ipam_resource_discovery: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam_resource_discovery")
	close({
		arn?:                            string
		description?:                    string
		id?:                             string
		ipam_resource_discovery_region?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		is_default?: bool
		owner_id?:   string
		tags?: [string]: string
		operating_regions?: matchN(1, [#operating_regions, [_, ...] & [...#operating_regions]])
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#operating_regions: close({
		region_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
