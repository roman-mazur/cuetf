package res

#aws_vpc_ipam: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_ipam")
	arn?:                                       string
	cascade?:                                   bool
	default_resource_discovery_association_id?: string
	default_resource_discovery_id?:             string
	description?:                               string
	enable_private_gua?:                        bool
	id?:                                        string
	private_default_scope_id?:                  string
	public_default_scope_id?:                   string
	scope_count?:                               number
	tags?: [string]:     string
	tags_all?: [string]: string
	tier?: string
	operating_regions?: #operating_regions | [_, ...] & [...#operating_regions]
	timeouts?: #timeouts

	#operating_regions: region_name!: string

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
