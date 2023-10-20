package res

#aws_inspector_assessment_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_inspector_assessment_template")
	arn?:     string
	duration: number
	id?:      string
	name:     string
	rules_package_arns: [...string]
	tags?: [string]: string
	tags_all?: [string]: string
	target_arn:          string
	event_subscription?: #event_subscription | [...#event_subscription]

	#event_subscription: {
		event:     string
		topic_arn: string
	}
}
