package data

#scaleway_edge_services_tls_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_edge_services_tls_stage")
	close({
		// The backend stage ID the TLS stage will be linked to
		backend_stage_id?: string

		// The cache stage ID the TLS stage will be linked to
		cache_stage_id?: string

		// TThe expiration date of the certificate
		certificate_expires_at?: string

		// The date and time of the creation of the TLS stage
		created_at?: string
		id?:         string

		// Set to true when Scaleway generates and manages a Let's Encrypt
		// certificate for the TLS stage/custom endpoint
		managed_certificate?: bool

		// The ID of the pipeline
		pipeline_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The route stage ID the TLS stage will be linked to
		route_stage_id?: string

		// Secret ID to filter for. Only TLS stages with this Secret ID
		// will be returned
		secret_id?: string

		// Secret region to filter for. Only TLS stages with a Secret in
		// this region will be returned
		secret_region?: string

		// The TLS secrets
		secrets?: [...close({
			region?:    string
			secret_id?: string
		})]

		// The ID of the TLS stage
		tls_stage_id?: string

		// The date and time of the last update of the TLS stage
		updated_at?: string

		// The WAF stage ID the TLS stage will be linked to
		waf_stage_id?: string
	})
}
