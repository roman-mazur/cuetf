package res

#aws_network_acl_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_network_acl_association")
	id?:            string
	network_acl_id: string
	subnet_id:      string
}
