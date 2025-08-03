package data

#aws_servicecatalog_portfolio_constraints: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_portfolio_constraints")
	close({
		accept_language?: string
		timeouts?:        #timeouts
		details?: [...close({
			constraint_id?: string
			description?:   string
			owner?:         string
			portfolio_id?:  string
			product_id?:    string
			type?:          string
		})]
		id?:           string
		portfolio_id!: string
		product_id?:   string
		region?:       string
	})

	#timeouts: close({
		read?: string
	})
}
