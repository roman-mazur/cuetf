package res

import "list"

#aws_appconfig_configuration_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_appconfig_configuration_profile")
	close({
		application_id!:           string
		arn?:                      string
		configuration_profile_id?: string
		description?:              string
		id?:                       string
		kms_key_identifier?:       string
		validator?: matchN(1, [#validator, list.MaxItems(2) & [...#validator]])
		location_uri!:       string
		name!:               string
		region?:             string
		retrieval_role_arn?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?: string
	})

	#validator: close({
		content?: string
		type!:    string
	})
}
