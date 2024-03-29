package res

#aws_servicecatalog_principal_portfolio_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_principal_portfolio_association")
	accept_language?: string
	id?:              string
	portfolio_id:     string
	principal_arn:    string
	principal_type?:  string
	timeouts?:        #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
	}
}
