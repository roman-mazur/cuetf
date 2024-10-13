package res

#aws_vpc_endpoint_subnet_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpc_endpoint_subnet_association")
	id?:              string
	subnet_id!:       string
	vpc_endpoint_id!: string
	timeouts?:        #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
