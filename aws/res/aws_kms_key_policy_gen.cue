package res

#aws_kms_key_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_kms_key_policy")
	close({
		bypass_policy_lockout_safety_check?: bool
		id?:                                 string
		key_id!:                             string
		policy!:                             string
		region?:                             string
	})
}
