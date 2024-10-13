package res

#aws_vpc_ipam_resource_discovery: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_ipam_resource_discovery")
	arn?:                            string
	description?:                    string
	id?:                             string
	ipam_resource_discovery_region?: string
	is_default?:                     bool
	owner_id?:                       string
	tags?: [string]: string
	tags_all?: [string]: string
	operating_regions?: #operating_regions | [_, ...] & [...#operating_regions]
	timeouts?: #timeouts

	#operating_regions: region_name!: string

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
