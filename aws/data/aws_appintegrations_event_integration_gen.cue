package data

#aws_appintegrations_event_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appintegrations_event_integration")
	close({
		arn?:         string
		description?: string
		event_filter?: [...close({
			source?: string
		})]
		eventbridge_bus?: string
		id?:              string
		name!:            string
		region?:          string
		tags?: [string]: string
	})
}
