package res

#aws_verifiedaccess_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_verifiedaccess_instance")
	close({
		cidr_endpoints_custom_subdomain?: string
		creation_time?:                   string
		description?:                     string
		fips_enabled?:                    bool
		id?:                              string
		last_updated_time?:               string
		name_servers?: [...string]
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		verified_access_trust_providers?: [...close({
			description?:                       string
			device_trust_provider_type?:        string
			trust_provider_type?:               string
			user_trust_provider_type?:          string
			verified_access_trust_provider_id?: string
		})]
	})
}
