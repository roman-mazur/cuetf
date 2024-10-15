package res

#aws_vpc_endpoint_security_group_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpc_endpoint_security_group_association")
	id?:                          string
	replace_default_association?: bool
	security_group_id!:           string
	vpc_endpoint_id!:             string
}
