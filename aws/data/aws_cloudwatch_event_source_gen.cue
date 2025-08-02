package data

#aws_cloudwatch_event_source: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_source")
	close({
		arn?:         string
		created_by?:  string
		id?:          string
		name?:        string
		name_prefix?: string
		region?:      string
		state?:       string
	})
}
