package data

#aws_ecrpublic_authorization_token: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ecrpublic_authorization_token")
	authorization_token?: string
	expires_at?:          string
	id?:                  string
	password?:            string
	user_name?:           string
}
