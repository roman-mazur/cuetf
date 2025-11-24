package data

#google_service_networking_peered_dns_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_service_networking_peered_dns_domain")
	close({
		dns_suffix?: string
		id?:         string
		name!:       string
		network!:    string
		parent?:     string
		project!:    string
		service!:    string
	})
}
