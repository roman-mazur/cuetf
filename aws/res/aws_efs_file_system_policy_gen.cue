package res

#aws_efs_file_system_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_efs_file_system_policy")
	close({
		bypass_policy_lockout_safety_check?: bool
		file_system_id!:                     string
		id?:                                 string
		policy!:                             string
		region?:                             string
	})
}
