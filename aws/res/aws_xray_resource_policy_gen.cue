package res

#aws_xray_resource_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_xray_resource_policy")
	close({
		bypass_policy_lockout_check?: bool
		last_updated_time?:           string
		policy_document!:             string
		policy_name!:                 string
		policy_revision_id?:          string
		region?:                      string
	})
}
