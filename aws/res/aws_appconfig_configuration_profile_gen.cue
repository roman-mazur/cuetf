package res

import "list"

#aws_appconfig_configuration_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appconfig_configuration_profile")
	application_id:            string
	arn?:                      string
	configuration_profile_id?: string
	description?:              string
	id?:                       string
	location_uri:              string
	name:                      string
	retrieval_role_arn?:       string
	tags?: [string]: string
	tags_all?: [string]: string
	type?:      string
	validator?: #validator | list.MaxItems(2) & [...#validator]

	#validator: {
		content?: string
		type:     string
	}
}
