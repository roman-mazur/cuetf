package data

#aws_vpclattice_service_network: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_service_network")
	arn?:                           string
	auth_type?:                     string
	created_at?:                    string
	id?:                            string
	last_updated_at?:               string
	name?:                          string
	number_of_associated_services?: number
	number_of_associated_vpcs?:     number
	service_network_identifier!:    string
	tags?: [string]: string
}
