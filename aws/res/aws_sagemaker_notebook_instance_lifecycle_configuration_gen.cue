package res

#aws_sagemaker_notebook_instance_lifecycle_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_notebook_instance_lifecycle_configuration")
	arn?:       string
	id?:        string
	name?:      string
	on_create?: string
	on_start?:  string
}
