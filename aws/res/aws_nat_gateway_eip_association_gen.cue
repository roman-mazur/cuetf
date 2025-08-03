package res

#aws_nat_gateway_eip_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_nat_gateway_eip_association")
	close({
		allocation_id!:  string
		association_id?: string
		nat_gateway_id!: string
		region?:         string
		timeouts?:       #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
