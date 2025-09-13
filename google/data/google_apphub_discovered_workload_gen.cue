package data

#google_apphub_discovered_workload: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apphub_discovered_workload")
	close({
		id?:       string
		location!: string
		name?:     string
		project?:  string
		workload_properties?: [...close({
			gcp_project?: string
			location?:    string
			zone?:        string
		})]
		workload_reference?: [...close({
			uri?: string
		})]
		workload_uri!: string
	})
}
