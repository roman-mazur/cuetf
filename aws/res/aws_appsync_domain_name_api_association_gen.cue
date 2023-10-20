package res

#aws_appsync_domain_name_api_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_appsync_domain_name_api_association")
	api_id:      string
	domain_name: string
	id?:         string
}
