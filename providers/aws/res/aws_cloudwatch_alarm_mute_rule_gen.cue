package res

#aws_cloudwatch_alarm_mute_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatch_alarm_mute_rule")
	close({
		mute_targets?: matchN(1, [#mute_targets, [...#mute_targets]])
		rule?: matchN(1, [#rule, [...#rule]])
		arn?:                    string
		description?:            string
		expire_date?:            string
		last_updated_timestamp?: string
		mute_type?:              string
		name!:                   string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		start_date?: string
		status?:     string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#mute_targets: close({
		alarm_names!: [...string]
	})

	#rule: close({
		schedule?: matchN(1, [_#defs."/$defs/rule/$defs/schedule", [..._#defs."/$defs/rule/$defs/schedule"]])
	})

	_#defs: "/$defs/rule/$defs/schedule": close({
		duration!:   string
		expression!: string
		timezone?:   string
	})
}
