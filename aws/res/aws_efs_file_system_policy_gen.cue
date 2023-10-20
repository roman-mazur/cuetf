package res

#aws_efs_file_system_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_efs_file_system_policy")
	bypass_policy_lockout_safety_check?: bool
	file_system_id:                      string
	id?:                                 string
	policy:                              string
}
