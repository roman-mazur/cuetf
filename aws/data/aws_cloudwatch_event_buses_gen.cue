package data

#aws_cloudwatch_event_buses: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudwatch_event_buses")
	close({
		event_buses?: [...close({
			arn?:                string
			creation_time?:      string
			description?:        string
			last_modified_time?: string
			name?:               string
			policy?:             string
		})]
		name_prefix?: string
		region?:      string
	})
}
