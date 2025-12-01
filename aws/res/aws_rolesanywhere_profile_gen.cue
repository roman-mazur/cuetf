package res

#aws_rolesanywhere_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_rolesanywhere_profile")
	close({
		arn?:              string
		duration_seconds?: number
		enabled?:          bool
		id?:               string
		managed_policy_arns?: [...string]
		name!:                        string
		require_instance_properties?: bool
		role_arns?: [...string]
		session_policy?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})
}
