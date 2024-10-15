package res

#aws_account_region: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_account_region")
	account_id?:  string
	enabled!:     bool
	id?:          string
	opt_status?:  string
	region_name!: string
	timeouts?:    #timeouts

	#timeouts: {
		create?: string
		update?: string
	}
}
