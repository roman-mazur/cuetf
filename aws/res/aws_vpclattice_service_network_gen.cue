package res

#aws_vpclattice_service_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpclattice_service_network")
	arn?:       string
	auth_type?: string
	id?:        string
	name!:      string
	tags?: [string]: string
	tags_all?: [string]: string
}
