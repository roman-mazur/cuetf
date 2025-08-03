package data

#aws_sfn_activity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sfn_activity")
	close({
		arn?:           string
		creation_date?: string
		id?:            string
		name?:          string
		region?:        string
	})
}
