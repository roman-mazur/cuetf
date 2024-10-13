package data

#aws_sns_topic: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sns_topic")
	arn?:  string
	id?:   string
	name!: string
	tags?: [string]: string
}
