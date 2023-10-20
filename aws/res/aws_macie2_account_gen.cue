package res

#aws_macie2_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_macie2_account")
	created_at?:                   string
	finding_publishing_frequency?: string
	id?:                           string
	service_role?:                 string
	status?:                       string
	updated_at?:                   string
}
