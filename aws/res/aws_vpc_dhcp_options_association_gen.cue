package res

#aws_vpc_dhcp_options_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_dhcp_options_association")
	close({
		dhcp_options_id!: string
		id?:              string
		region?:          string
		vpc_id!:          string
	})
}
