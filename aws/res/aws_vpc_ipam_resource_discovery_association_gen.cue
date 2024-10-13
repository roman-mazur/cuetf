package res

#aws_vpc_ipam_resource_discovery_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_ipam_resource_discovery_association")
	arn?:                        string
	id?:                         string
	ipam_arn?:                   string
	ipam_id!:                    string
	ipam_region?:                string
	ipam_resource_discovery_id!: string
	is_default?:                 bool
	owner_id?:                   string
	state?:                      string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
