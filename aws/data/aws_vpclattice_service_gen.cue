package data

#aws_vpclattice_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_service")
	close({
		arn?:                string
		auth_type?:          string
		certificate_arn?:    string
		custom_domain_name?: string
		dns_entry?: [...close({
			domain_name?:    string
			hosted_zone_id?: string
		})]
		id?:                 string
		name?:               string
		region?:             string
		service_identifier?: string
		status?:             string
		tags?: [string]: string
	})
}
