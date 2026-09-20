package data

google_compute_service_attachments: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_service_attachments")
	close({
		filter?:  string
		id?:      string
		project?: string
		region?:  string
		service_attachments?: [...close({
			connected_endpoints?: [...close({
				consumer_network?: string
				endpoint?:         string
				nat_ips?: [...string]
				propagated_connection_count?: number
				psc_connection_id?:           string
				status?:                      string
			})]
			connection_preference?: string
			consumer_accept_lists?: [...close({
				connection_limit?:  number
				endpoint_url?:      string
				network_url?:       string
				project_id_or_num?: string
			})]
			consumer_reject_lists?: [...string]
			deletion_policy?: string
			description?:     string
			domain_names?: [...string]
			enable_proxy_protocol?: bool
			fingerprint?:           string
			name?:                  string
			nat_subnets?: [...string]
			project?:                     string
			propagated_connection_limit?: number
			psc_service_attachment_id?: [...close({
				high?: string
				low?:  string
			})]
			reconcile_connections?:                    bool
			region?:                                   string
			self_link?:                                string
			send_propagated_connection_limit_if_zero?: bool
			show_nat_ips?:                             bool
			target_service?:                           string
		})]
	})
}
