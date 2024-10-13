package res

#aws_dx_gateway_association_proposal: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_dx_gateway_association_proposal")
	allowed_prefixes?: [...string]
	associated_gateway_id!:               string
	associated_gateway_owner_account_id?: string
	associated_gateway_type?:             string
	dx_gateway_id!:                       string
	dx_gateway_owner_account_id!:         string
	id?:                                  string
}
