package res

#aws_servicecatalog_organizations_access: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_organizations_access")
	enabled!:  bool
	id?:       string
	timeouts?: #timeouts

	#timeouts: read?: string
}
