package res

#aws_networkmanager_core_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_core_network")
	arn?:                  string
	base_policy_document?: string
	base_policy_regions?: [...string]
	create_base_policy?: bool
	created_at?:         string
	description?:        string
	edges?: [...{
		asn?:           number
		edge_location?: string
		inside_cidr_blocks?: [...string]
	}]
	global_network_id!: string
	id?:                string
	segments?: [...{
		edge_locations?: [...string]
		name?: string
		shared_segments?: [...string]
	}]
	state?: string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
