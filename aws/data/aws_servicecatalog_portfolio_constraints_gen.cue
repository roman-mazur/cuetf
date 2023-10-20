package data

#aws_servicecatalog_portfolio_constraints: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_portfolio_constraints")
	accept_language?: string
	details?: [...{
		constraint_id?: string
		description?:   string
		owner?:         string
		portfolio_id?:  string
		product_id?:    string
		type?:          string
	}]
	id?:          string
	portfolio_id: string
	product_id?:  string
	timeouts?:    #timeouts

	#timeouts: read?: string
}
