package res

#aws_vpclattice_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_service")
	arn?:                string
	auth_type?:          string
	certificate_arn?:    string
	custom_domain_name?: string
	dns_entry?: [...{
		domain_name?:    string
		hosted_zone_id?: string
	}]
	id?:     string
	name!:   string
	status?: string
	tags?: [string]:     string
	tags_all?: [string]: string
	timeouts?: #timeouts

	#timeouts: {
		create?: string
		delete?: string
		update?: string
	}
}
