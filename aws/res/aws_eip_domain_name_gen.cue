package res

#aws_eip_domain_name: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_eip_domain_name")
	close({
		timeouts?:      #timeouts
		allocation_id!: string
		domain_name!:   string
		id?:            string
		ptr_record?:    string
		region?:        string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
