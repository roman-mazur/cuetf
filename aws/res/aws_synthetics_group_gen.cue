package res

#aws_synthetics_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_synthetics_group")
	arn?:      string
	group_id?: string
	id?:       string
	name:      string
	tags?: [string]: string
	tags_all?: [string]: string
}
