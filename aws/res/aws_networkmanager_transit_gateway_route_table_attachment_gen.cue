package res

#aws_networkmanager_transit_gateway_route_table_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_transit_gateway_route_table_attachment")
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
	tags?: [string]:     string
	tags_all?: [string]: string
	transit_gateway_route_table_arn!: string
	timeouts?:                        #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
