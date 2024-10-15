package res

#aws_emr_studio_session_mapping: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_emr_studio_session_mapping")
	id?:                 string
	identity_id?:        string
	identity_name?:      string
	identity_type!:      string
	session_policy_arn!: string
	studio_id!:          string
}
