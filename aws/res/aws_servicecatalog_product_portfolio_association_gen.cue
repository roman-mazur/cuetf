package res

#aws_servicecatalog_product_portfolio_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_product_portfolio_association")
	accept_language?:     string
	id?:                  string
	portfolio_id!:        string
	product_id!:          string
	source_portfolio_id?: string
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
	}
}
