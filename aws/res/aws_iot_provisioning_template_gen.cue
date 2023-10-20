package res

import "list"

#aws_iot_provisioning_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_iot_provisioning_template")
	arn?:                  string
	default_version_id?:   number
	description?:          string
	enabled?:              bool
	id?:                   string
	name:                  string
	provisioning_role_arn: string
	tags?: [string]: string
	tags_all?: [string]: string
	template_body:          string
	pre_provisioning_hook?: #pre_provisioning_hook | list.MaxItems(1) & [...#pre_provisioning_hook]

	#pre_provisioning_hook: {
		payload_version?: string
		target_arn:       string
	}
}
