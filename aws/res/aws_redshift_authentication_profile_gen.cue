package res

#aws_redshift_authentication_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_redshift_authentication_profile")
	authentication_profile_content!: string
	authentication_profile_name!:    string
	id?:                             string
}
