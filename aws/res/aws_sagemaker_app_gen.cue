package res

import "list"

#aws_sagemaker_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_sagemaker_app")
	app_name!:   string
	app_type!:   string
	arn?:        string
	domain_id!:  string
	id?:         string
	space_name?: string
	tags?: [string]: string
	tags_all?: [string]: string
	user_profile_name?: string
	resource_spec?: #resource_spec | list.MaxItems(1) & [...#resource_spec]

	#resource_spec: {
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	}
}
