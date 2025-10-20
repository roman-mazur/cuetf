package data

#google_network_management_connectivity_tests: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_network_management_connectivity_tests")
	close({
		connectivity_tests?: [...close({
			bypass_firewall_checks?: bool
			description?:            string
			destination?: [...close({
				cloud_sql_instance?: string
				forwarding_rule?:    string
				fqdn?:               string
				gke_master_cluster?: string
				instance?:           string
				ip_address?:         string
				network?:            string
				port?:               number
				project_id?:         string
				redis_cluster?:      string
				redis_instance?:     string
			})]
			effective_labels?: [string]: string
			labels?: [string]:           string
			name?:     string
			project?:  string
			protocol?: string
			related_projects?: [...string]
			round_trip?: bool
			source?: [...close({
				app_engine_version?: [...close({
					uri?: string
				})]
				cloud_function?: [...close({
					uri?: string
				})]
				cloud_run_revision?: [...close({
					uri?: string
				})]
				cloud_sql_instance?: string
				gke_master_cluster?: string
				instance?:           string
				ip_address?:         string
				network?:            string
				network_type?:       string
				port?:               number
				project_id?:         string
			})]
			terraform_labels?: [string]: string
		})]

		// Lists the ConnectivityTests that match the filter expression. A
		// filter expression filters the resources listed in the
		// response.
		filter?:  string
		id?:      string
		project?: string
	})
}
