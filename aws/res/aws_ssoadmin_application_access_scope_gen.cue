package res

#aws_ssoadmin_application_access_scope: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_ssoadmin_application_access_scope")
	application_arn!: string
	authorized_targets?: [...string]
	id?:    string
	scope!: string
}
