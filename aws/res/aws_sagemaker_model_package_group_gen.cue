package res

#aws_sagemaker_model_package_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_model_package_group")
	arn?:                             string
	id?:                              string
	model_package_group_description?: string
	model_package_group_name!:        string
	tags?: [string]:     string
	tags_all?: [string]: string
}
