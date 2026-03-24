package data

#scaleway_edge_services_waf_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_edge_services_waf_stage")
	close({
		// The ID of the backend stage to forward requests to after the
		// WAF stage
		backend_stage_id?: string

		// The date and time of the creation of the WAF stage
		created_at?: string
		id?:         string

		// Mode defining WAF behavior (`disable`/`log_only`/`enable`)
		mode?: string

		// The sensitivity level (`1`,`2`,`3`,`4`) to use when classifying
		// requests as malicious. With a high level, requests are more
		// likely to be classed as malicious, and false positives are
		// expected. With a lower level, requests are more likely to be
		// classed as benign
		paranoia_level?: number

		// The ID of the pipeline
		pipeline_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The date and time of the last update of the WAF stage
		updated_at?: string

		// The ID of the WAF stage
		waf_stage_id?: string
	})
}
