package res

#aws_dx_gateway_association_proposal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_gateway_association_proposal")
	close({
		allowed_prefixes?: [...string]
		associated_gateway_id!:               string
		associated_gateway_owner_account_id?: string
		associated_gateway_type?:             string
		dx_gateway_id!:                       string
		dx_gateway_owner_account_id!:         string
		id?:                                  string
		region?:                              string
	})
}
