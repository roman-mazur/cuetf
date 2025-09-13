package data

#google_apphub_discovered_service: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apphub_discovered_service")
	close({
		id?:       string
		location!: string
		name?:     string
		project?:  string
		service_properties?: [...close({
			gcp_project?: string
			location?:    string
			zone?:        string
		})]
		service_reference?: [...close({
			path?: string
			uri?:  string
		})]
		service_uri!: string
	})
}
