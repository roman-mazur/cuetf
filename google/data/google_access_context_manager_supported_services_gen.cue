package data

#google_access_context_manager_supported_services: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_access_context_manager_supported_services")
	close({
		id?: string

		// The list of VPC-SC supported services.
		supported_services?: [...close({
			available_on_restricted_vip?: bool
			known_limitations?:           bool
			name?:                        string
			service_support_stage?:       string
			support_stage?:               string
			title?:                       string
		})]
	})
}
