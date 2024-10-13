package res

import "list"

#aws_networkmanager_connect_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_connect_attachment")
	arn?:                           string
	attachment_id?:                 string
	attachment_policy_rule_number?: number
	attachment_type?:               string
	core_network_arn?:              string
	core_network_id!:               string
	edge_location!:                 string
	id?:                            string
	owner_account_id?:              string
	resource_arn?:                  string
	segment_name?:                  string
	state?:                         string
	tags?: [string]:     string
	tags_all?: [string]: string
	transport_attachment_id!: string
	options?: #options | list.MaxItems(1) & [_, ...] & [...#options]
	timeouts?: #timeouts

	#options: protocol?: string

	#timeouts: {
		create?: string
		delete?: string
	}
}
