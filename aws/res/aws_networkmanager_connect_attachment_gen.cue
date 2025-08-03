package res

import "list"

#aws_networkmanager_connect_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_networkmanager_connect_attachment")
	close({
		arn?:           string
		attachment_id?: string
		options?: matchN(1, [#options, list.MaxItems(1) & [_, ...] & [...#options]])
		attachment_policy_rule_number?: number
		attachment_type?:               string
		core_network_arn?:              string
		core_network_id!:               string
		edge_location!:                 string
		timeouts?:                      #timeouts
		id?:                            string
		owner_account_id?:              string
		resource_arn?:                  string
		segment_name?:                  string
		state?:                         string
		tags?: [string]:     string
		tags_all?: [string]: string
		transport_attachment_id!: string
	})

	#options: close({
		protocol?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
