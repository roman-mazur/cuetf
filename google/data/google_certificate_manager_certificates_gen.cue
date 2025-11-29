package data

#google_certificate_manager_certificates: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_certificate_manager_certificates")
	close({
		certificates?: [...close({
			description?: string
			effective_labels?: [string]: string
			labels?: [string]:           string
			location?: string
			managed?: [...close({
				authorization_attempt_info?: [...close({
					details?:        string
					domain?:         string
					failure_reason?: string
					state?:          string
				})]
				dns_authorizations?: [...string]
				domains?: [...string]
				issuance_config?: string
				provisioning_issue?: [...close({
					details?: string
					reason?:  string
				})]
				state?: string
			})]
			name?:    string
			project?: string
			san_dnsnames?: [...string]
			scope?: string
			terraform_labels?: [string]: string
		})]
		filter?: string
		id?:     string
		region?: string
	})
}
