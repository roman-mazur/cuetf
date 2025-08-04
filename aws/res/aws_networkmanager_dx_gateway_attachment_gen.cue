package res

#aws_networkmanager_dx_gateway_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_dx_gateway_attachment")
	close({
		arn?:                           string
		attachment_policy_rule_number?: number
		attachment_type?:               string
		core_network_arn?:              string
		core_network_id!:               string
		direct_connect_gateway_arn!:    string
		edge_locations!: [...string]
		id?:               string
		timeouts?:         #timeouts
		owner_account_id?: string
		segment_name?:     string
		state?:            string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
