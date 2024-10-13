package res

import "list"

#aws_networkmanager_vpc_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_networkmanager_vpc_attachment")
	arn?:                           string
	attachment_policy_rule_number?: number
	attachment_type?:               string
	core_network_arn?:              string
	core_network_id!:               string
	edge_location?:                 string
	id?:                            string
	owner_account_id?:              string
	resource_arn?:                  string
	segment_name?:                  string
	state?:                         string
	subnet_arns!: [...string]
	tags?: [string]:     string
	tags_all?: [string]: string
	vpc_arn!: string
	options?: #options | list.MaxItems(1) & [...#options]
	timeouts?: #timeouts

	#options: {
		appliance_mode_support?: bool
		ipv6_support?:           bool
	}

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
