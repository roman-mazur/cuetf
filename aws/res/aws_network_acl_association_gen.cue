package res

#aws_network_acl_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_network_acl_association")
	close({
		id?:             string
		network_acl_id!: string
		region?:         string
		subnet_id!:      string
	})
}
