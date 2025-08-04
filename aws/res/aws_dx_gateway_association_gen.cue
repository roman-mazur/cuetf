package res

#aws_dx_gateway_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_gateway_association")
	close({
		allowed_prefixes?: [...string]
		associated_gateway_id?:               string
		associated_gateway_owner_account_id?: string
		associated_gateway_type?:             string
		dx_gateway_association_id?:           string
		dx_gateway_id!:                       string
		dx_gateway_owner_account_id?:         string
		id?:                                  string
		proposal_id?:                         string
		timeouts?:                            #timeouts
		region?:                              string
		transit_gateway_attachment_id?:       string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
