package res

#aws_sagemaker_model_package_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_model_package_group")
	close({
		arn?:                             string
		id?:                              string
		model_package_group_description?: string
		model_package_group_name!:        string
		region?:                          string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
