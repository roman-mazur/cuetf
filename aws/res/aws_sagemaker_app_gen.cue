package res

import "list"

#aws_sagemaker_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_sagemaker_app")
	close({
		app_name!: string
		resource_spec?: matchN(1, [#resource_spec, list.MaxItems(1) & [...#resource_spec]])
		app_type!:   string
		arn?:        string
		domain_id!:  string
		id?:         string
		region?:     string
		space_name?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		user_profile_name?: string
	})

	#resource_spec: close({
		instance_type?:                 string
		lifecycle_config_arn?:          string
		sagemaker_image_arn?:           string
		sagemaker_image_version_alias?: string
		sagemaker_image_version_arn?:   string
	})
}
