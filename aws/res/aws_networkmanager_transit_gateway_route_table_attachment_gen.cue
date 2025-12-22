package res

#aws_networkmanager_transit_gateway_route_table_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkmanager_transit_gateway_route_table_attachment")
	close({
		arn?:                           string
		attachment_policy_rule_number?: number
		attachment_type?:               string
		core_network_arn?:              string
		core_network_id?:               string
		edge_location?:                 string
		id?:                            string
		owner_account_id?:              string
		peering_id!:                    string
		resource_arn?:                  string
		segment_name?:                  string
		state?:                         string
		timeouts?:                      #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_gateway_route_table_arn!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
