package res

#aws_sagemaker_notebook_instance_lifecycle_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_notebook_instance_lifecycle_configuration")
	close({
		arn?:       string
		id?:        string
		name?:      string
		on_create?: string
		on_start?:  string
		region?:    string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
