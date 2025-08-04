package res

#aws_inspector_assessment_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_inspector_assessment_template")
	close({
		arn?:      string
		duration!: number
		id?:       string
		name!:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		rules_package_arns!: [...string]
		tags?: [string]:     string
		tags_all?: [string]: string
		target_arn!: string
		event_subscription?: matchN(1, [#event_subscription, [...#event_subscription]])
	})

	#event_subscription: close({
		event!:     string
		topic_arn!: string
	})
}
