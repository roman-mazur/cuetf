package data

#aws_dx_gateway: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dx_gateway")
	amazon_side_asn?:  string
	id?:               string
	name!:             string
	owner_account_id?: string
}
