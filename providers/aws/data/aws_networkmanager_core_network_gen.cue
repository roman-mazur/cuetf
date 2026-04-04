package data

#aws_networkmanager_core_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_networkmanager_core_network")
	close({
		arn?:             string
		core_network_id!: string
		created_at?:      string
		description?:     string
		edges?: [...close({
			asn?:           number
			edge_location?: string
			inside_cidr_blocks?: [...string]
		})]
		global_network_id?: string
		network_function_groups?: [...close({
			edge_locations?: [...string]
			name?: string
			segments?: [...close({
				send_to?: [...string]
				send_via?: [...string]
			})]
		})]
		segments?: [...close({
			edge_locations?: [...string]
			name?: string
			shared_segments?: [...string]
		})]
		state?: string
		tags?: [string]: string
	})
}
