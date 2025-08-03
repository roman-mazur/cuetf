package res

#aws_vpc_security_group_vpc_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_security_group_vpc_association")
	close({
		region?:            string
		security_group_id!: string
		state?:             string
		vpc_id!:            string
		timeouts?:          #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
