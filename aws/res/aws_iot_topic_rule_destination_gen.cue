package res

import "list"

#aws_iot_topic_rule_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_topic_rule_destination")
	close({
		timeouts?: #timeouts
		arn?:      string
		enabled?:  bool
		id?:       string
		region?:   string
		vpc_configuration?: matchN(1, [#vpc_configuration, list.MaxItems(1) & [_, ...] & [...#vpc_configuration]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vpc_configuration: close({
		role_arn!: string
		security_groups?: [...string]
		subnet_ids!: [...string]
		vpc_id!: string
	})
}
