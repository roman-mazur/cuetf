package res

#aws_networkmanager_core_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_core_network")
	close({
		arn?:                  string
		base_policy_document?: string
		base_policy_regions?: [...string]
		create_base_policy?: bool
		created_at?:         string
		description?:        string
		timeouts?:           #timeouts
		edges?: [...close({
			asn?:           number
			edge_location?: string
			inside_cidr_blocks?: [...string]
		})]
		global_network_id!: string
		id?:                string
		segments?: [...close({
			edge_locations?: [...string]
			name?: string
			shared_segments?: [...string]
		})]
		state?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
