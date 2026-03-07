package data

#aws_servicecatalog_constraint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_servicecatalog_constraint")
	close({
		timeouts?:        #timeouts
		accept_language?: string
		description?:     string
		id!:              string
		owner?:           string
		parameters?:      string
		portfolio_id?:    string
		product_id?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		status?: string
		type?:   string
	})

	#timeouts: close({
		read?: string
	})
}
