package res

#aws_dx_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_dx_gateway")
	close({
		timeouts?:         #timeouts
		amazon_side_asn!:  string
		arn?:              string
		id?:               string
		name!:             string
		owner_account_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
