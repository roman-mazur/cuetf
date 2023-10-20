package res

#aws_accessanalyzer_analyzer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_accessanalyzer_analyzer")
	analyzer_name: string
	arn?:          string
	id?:           string
	tags?: [string]: string
	tags_all?: [string]: string
	type?: string
}
