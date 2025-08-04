package res

#aws_sagemaker_model_package_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_model_package_group")
	close({
		arn?:                             string
		id?:                              string
		model_package_group_description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                   string
		model_package_group_name!: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
