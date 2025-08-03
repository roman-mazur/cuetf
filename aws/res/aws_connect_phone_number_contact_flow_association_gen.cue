package res

#aws_connect_phone_number_contact_flow_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_connect_phone_number_contact_flow_association")
	close({
		contact_flow_id!: string
		instance_id!:     string
		phone_number_id!: string
		region?:          string
	})
}
