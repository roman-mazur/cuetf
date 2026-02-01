package res

#aws_vpc_ipam_resource_discovery: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_vpc_ipam_resource_discovery")
	close({
		arn?:                            string
		description?:                    string
		id?:                             string
		ipam_resource_discovery_region?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		operating_regions!: matchN(1, [#operating_regions, [_, ...] & [...#operating_regions]])
		is_default?: bool
		organizational_unit_exclusion?: matchN(1, [#organizational_unit_exclusion, [...#organizational_unit_exclusion]])
		owner_id?: string
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
	})

	#operating_regions: close({
		region_name!: string
	})

	#organizational_unit_exclusion: close({
		organizations_entity_path!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
