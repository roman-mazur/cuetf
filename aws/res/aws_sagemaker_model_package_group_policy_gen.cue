package res

#aws_sagemaker_model_package_group_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_model_package_group_policy")
	id?:                       string
	model_package_group_name!: string
	resource_policy!:          string
}
