package res

#aws_amplify_backend_environment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_amplify_backend_environment")
	close({
		app_id!:               string
		arn?:                  string
		deployment_artifacts?: string
		environment_name!:     string
		id?:                   string
		region?:               string
		stack_name?:           string
	})
}
