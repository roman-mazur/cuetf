package res

#aws_redshift_authentication_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_redshift_authentication_profile")
	close({
		authentication_profile_content!: string
		authentication_profile_name!:    string
		id?:                             string
		region?:                         string
	})
}
