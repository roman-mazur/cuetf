package res

#aws_sagemaker_studio_lifecycle_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_studio_lifecycle_config")
	close({
		arn?:                              string
		id?:                               string
		region?:                           string
		studio_lifecycle_config_app_type!: string
		studio_lifecycle_config_content!:  string
		studio_lifecycle_config_name!:     string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
