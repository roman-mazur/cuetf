package res

#aws_codebuild_source_credential: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_codebuild_source_credential")
	arn?:         string
	auth_type!:   string
	id?:          string
	server_type!: string
	token!:       string
	user_name?:   string
}
