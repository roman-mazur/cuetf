package res

#aws_servicecatalog_portfolio_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_servicecatalog_portfolio_share")
	close({
		accept_language?:     string
		timeouts?:            #timeouts
		accepted?:            bool
		id?:                  string
		portfolio_id!:        string
		principal_id!:        string
		region?:              string
		share_principals?:    bool
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
