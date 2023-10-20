package res

#aws_vpclattice_service_network_service_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpclattice_service_network_service_association")
	arn?:                string
	created_by?:         string
	custom_domain_name?: string
	dns_entry?: [...{
		domain_name?:    string
		hosted_zone_id?: string
	}]
	id?:                        string
	service_identifier:         string
	service_network_identifier: string
	status?:                    string
	tags?: [string]: string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
