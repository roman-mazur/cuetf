package res

#aws_servicecatalog_portfolio_share: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_servicecatalog_portfolio_share")
	accept_language?:     string
	accepted?:            bool
	id?:                  string
	portfolio_id!:        string
	principal_id!:        string
	share_principals?:    bool
	share_tag_options?:   bool
	type!:                string
	wait_for_acceptance?: bool
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
		read?:   string
		update?: string
	}
}
