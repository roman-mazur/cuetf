package res

#aws_sagemaker_studio_lifecycle_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_studio_lifecycle_config")
	arn?:                             string
	id?:                              string
	studio_lifecycle_config_app_type: string
	studio_lifecycle_config_content:  string
	studio_lifecycle_config_name:     string
	tags?: [string]: string
	tags_all?: [string]: string
}
