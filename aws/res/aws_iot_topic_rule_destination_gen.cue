package res

import "list"

#aws_iot_topic_rule_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_topic_rule_destination")
	arn?:      string
	enabled?:  bool
	id?:       string
	timeouts?: #timeouts
	vpc_configuration?: #vpc_configuration | list.MaxItems(1) & [_, ...] & [...#vpc_configuration]

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}

	#vpc_configuration: {
		role_arn!: string
		security_groups?: [...string]
		subnet_ids!: [...string]
		vpc_id!: string
	}
}
