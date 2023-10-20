package res

#aws_rolesanywhere_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_rolesanywhere_profile")
	arn?:              string
	duration_seconds?: number
	enabled?:          bool
	id?:               string
	managed_policy_arns?: [...string]
	name:                         string
	require_instance_properties?: bool
	role_arns: [...string]
	session_policy?: string
	tags?: [string]: string
	tags_all?: [string]: string
}
