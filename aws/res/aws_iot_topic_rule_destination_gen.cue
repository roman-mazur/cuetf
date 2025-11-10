package res

import "list"

#aws_iot_topic_rule_destination: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_topic_rule_destination")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		enabled?:  bool
		id?:       string
		timeouts?: #timeouts
		vpc_configuration!: matchN(1, [#vpc_configuration, list.MaxItems(1) & [_, ...] & [...#vpc_configuration]])
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
