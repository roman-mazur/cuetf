package res

#aws_vpc_block_public_access_options: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_block_public_access_options")
	close({
		aws_account_id?:              string
		timeouts?:                    #timeouts
		aws_region?:                  string
		id?:                          string
		internet_gateway_block_mode!: string
		region?:                      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
