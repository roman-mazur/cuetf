package res

#aws_account_region: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_account_region")
	close({
		timeouts?:    #timeouts
		account_id?:  string
		enabled!:     bool
		id?:          string
		opt_status?:  string
		region_name!: string
	})

	#timeouts: close({
		create?: string
		update?: string
	})
}
