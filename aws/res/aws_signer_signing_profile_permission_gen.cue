package res

#aws_signer_signing_profile_permission: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_signer_signing_profile_permission")
	action!:              string
	id?:                  string
	principal!:           string
	profile_name!:        string
	profile_version?:     string
	statement_id?:        string
	statement_id_prefix?: string
}
