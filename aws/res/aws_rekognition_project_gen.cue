package res

#aws_rekognition_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rekognition_project")
	arn?:         string
	auto_update?: string
	feature?:     string
	id?:          string
	name!:        string
	timeouts?:    #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
