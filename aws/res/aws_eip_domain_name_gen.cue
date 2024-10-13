package res

#aws_eip_domain_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_eip_domain_name")
	allocation_id!: string
	domain_name!:   string
	id?:            string
	ptr_record?:    string
	timeouts?:      #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
