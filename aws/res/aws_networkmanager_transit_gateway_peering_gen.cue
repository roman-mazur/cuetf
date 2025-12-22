package res

#aws_networkmanager_transit_gateway_peering: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkmanager_transit_gateway_peering")
	close({
		arn?:              string
		core_network_arn?: string
		core_network_id!:  string
		edge_location?:    string
		id?:               string
		owner_account_id?: string
		peering_type?:     string
		resource_arn?:     string
		timeouts?:         #timeouts
		tags?: [string]:     string
		tags_all?: [string]: string
		transit_gateway_arn!:                   string
		transit_gateway_peering_attachment_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
