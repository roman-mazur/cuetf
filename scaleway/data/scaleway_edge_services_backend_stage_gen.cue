package data

#scaleway_edge_services_backend_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_edge_services_backend_stage")
	close({
		// The ID of the backend stage
		backend_stage_id?: string

		// Filter by S3 bucket name
		bucket_name?: string

		// Filter by S3 bucket region
		bucket_region?: string

		// The date and time of the creation of the backend stage
		created_at?: string
		id?:         string

		// The Scaleway Load Balancer origin linked to the backend stage
		lb_backend_config?: [...close({
			lb_config?: [...close({
				domain_name?:   string
				frontend_id?:   string
				has_websocket?: bool
				id?:            string
				is_ssl?:        bool
				zone?:          string
			})]
		})]

		// Filter by Load Balancer ID
		lb_id?: string

		// The ID of the pipeline
		pipeline_id?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The Scaleway Object Storage origin bucket (S3) linked to the
		// backend stage
		s3_backend_config?: [...close({
			bucket_name?:   string
			bucket_region?: string
			is_website?:    bool
		})]

		// The date and time of the last update of the backend stage
		updated_at?: string
	})
}
