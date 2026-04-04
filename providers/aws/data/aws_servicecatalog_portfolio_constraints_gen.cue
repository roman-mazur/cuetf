package data

#aws_servicecatalog_portfolio_constraints: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_servicecatalog_portfolio_constraints")
	close({
		timeouts?:        #timeouts
		accept_language?: string
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

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#timeouts: close({
		read?: string
	})
}
