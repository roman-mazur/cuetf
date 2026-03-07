package res

import "list"

#aws_networkmanager_vpc_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_networkmanager_vpc_attachment")
	close({
		options?: matchN(1, [#options, list.MaxItems(1) & [...#options]])
		timeouts?:                      #timeouts
		arn?:                           string
		attachment_policy_rule_number?: number
		attachment_type?:               string
		core_network_arn?:              string
		core_network_id!:               string
		edge_location?:                 string
		id?:                            string
		owner_account_id?:              string
		resource_arn?:                  string
		routing_policy_label?:          string
		segment_name?:                  string
		state?:                         string
		subnet_arns!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		vpc_arn!: string
	})

	#options: close({
		appliance_mode_support?:             bool
		dns_support?:                        bool
		ipv6_support?:                       bool
		security_group_referencing_support?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
