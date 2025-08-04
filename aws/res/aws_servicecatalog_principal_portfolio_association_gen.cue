package res

#aws_servicecatalog_principal_portfolio_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_principal_portfolio_association")
	close({
		accept_language?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:         string
		id?:             string
		portfolio_id!:   string
		principal_arn!:  string
		principal_type?: string
		timeouts?:       #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
