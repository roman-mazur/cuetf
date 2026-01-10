package res

#aws_servicecatalog_portfolio_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_servicecatalog_portfolio_share")
	close({
		accept_language?: string
		accepted?:        bool
		id?:              string
		portfolio_id!:    string
		principal_id!:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:              string
		share_principals?:    bool
		timeouts?:            #timeouts
		share_tag_options?:   bool
		type!:                string
		wait_for_acceptance?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
