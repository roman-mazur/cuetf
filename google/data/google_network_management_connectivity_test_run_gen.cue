package data

#google_network_management_connectivity_test_run: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_management_connectivity_test_run")
	close({
		id?: string

		// Unique name for the connectivity test.
		name!:    string
		project?: string

		// Connectivity test reachability details.
		reachability_details?: [...close({
			result?: string
			traces?: [...close({
				endpoint_info?: [...close({
					destination_ip?:          string
					destination_network_uri?: string
					destination_port?:        number
					protocol?:                string
					source_agent_uri?:        string
					source_ip?:               string
					source_network_uri?:      string
					source_port?:             number
				})]
				forward_trace_id?: number
				steps?: [...close({
					causes_drop?: bool
					description?: string
					project_id?:  string
					state?:       string
				})]
			})]
			verify_time?: string
		})]
	})
}
