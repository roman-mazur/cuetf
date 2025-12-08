package data

#google_compute_forwarding_rules: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_compute_forwarding_rules")
	close({
		id?:      string
		project?: string
		region?:  string
		rules?: [...close({
			all_ports?:               bool
			allow_global_access?:     bool
			allow_psc_global_access?: bool
			backend_service?:         string
			base_forwarding_rule?:    string
			creation_timestamp?:      string
			description?:             string
			effective_labels?: [string]: string
			forwarding_rule_id?:     number
			ip_address?:             string
			ip_collection?:          string
			ip_protocol?:            string
			ip_version?:             string
			is_mirroring_collector?: bool
			label_fingerprint?:      string
			labels?: [string]: string
			load_balancing_scheme?: string
			name?:                  string
			network?:               string
			network_tier?:          string
			no_automate_dns_zone?:  bool
			port_range?:            string
			ports?: [...string]
			project?:               string
			psc_connection_id?:     string
			psc_connection_status?: string
			recreate_closed_psc?:   bool
			region?:                string
			self_link?:             string
			service_directory_registrations?: [...close({
				namespace?: string
				service?:   string
			})]
			service_label?: string
			service_name?:  string
			source_ip_ranges?: [...string]
			subnetwork?: string
			target?:     string
			terraform_labels?: [string]: string
		})]
	})
}
