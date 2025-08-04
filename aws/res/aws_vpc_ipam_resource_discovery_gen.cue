package res

#aws_vpc_ipam_resource_discovery: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_ipam_resource_discovery")
	close({
		arn?:                            string
		description?:                    string
		id?:                             string
		ipam_resource_discovery_region?: string
		operating_regions?: matchN(1, [#operating_regions, [_, ...] & [...#operating_regions]])
		is_default?: bool
		owner_id?:   string
		region?:     string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
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
