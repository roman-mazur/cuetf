package res

#aws_dx_gateway_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dx_gateway_association")
	close({
		allowed_prefixes?: [...string]
		associated_gateway_id?:               string
		associated_gateway_owner_account_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                        string
		associated_gateway_type?:       string
		dx_gateway_association_id?:     string
		timeouts?:                      #timeouts
		dx_gateway_id!:                 string
		dx_gateway_owner_account_id?:   string
		id?:                            string
		proposal_id?:                   string
		transit_gateway_attachment_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
