package res

#aws_networkmanager_attachment_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_attachment_accepter")
	attachment_id!:                 string
	attachment_policy_rule_number?: number
	attachment_type!:               string
	core_network_arn?:              string
	core_network_id?:               string
	edge_location?:                 string
	id?:                            string
	owner_account_id?:              string
	resource_arn?:                  string
	segment_name?:                  string
	state?:                         string
	timeouts?:                      #timeouts

	#timeouts: create?: string
}
