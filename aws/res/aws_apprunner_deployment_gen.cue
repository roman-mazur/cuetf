package res

#aws_apprunner_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_apprunner_deployment")
	id?:           string
	operation_id?: string
	service_arn!:  string
	status?:       string
	timeouts?:     #timeouts

	#timeouts: create?: string
}
