package data

#aws_vpclattice_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_vpclattice_service")
	arn?:                string
	auth_type?:          string
	certificate_arn?:    string
	custom_domain_name?: string
	dns_entry?: [...{
		domain_name?:    string
		hosted_zone_id?: string
	}]
	id?:                 string
	name?:               string
	service_identifier?: string
	status?:             string
	tags?: [string]: string
}
