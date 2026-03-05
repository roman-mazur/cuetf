package res

import "list"

#scaleway_edge_services_backend_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_edge_services_backend_stage")
	close({
		lb_backend_config?: matchN(1, [#lb_backend_config, [...#lb_backend_config]])
		s3_backend_config?: matchN(1, [#s3_backend_config, list.MaxItems(1) & [...#s3_backend_config]])

		// The date and time of the creation of the backend stage
		created_at?: string
		id?:         string

		// The ID of the pipeline
		pipeline_id!: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The date and time of the last update of the backend stage
		updated_at?: string
	})

	#lb_backend_config: close({
		lb_config?: matchN(1, [_#defs."/$defs/lb_backend_config/$defs/lb_config", list.MaxItems(1) & [..._#defs."/$defs/lb_backend_config/$defs/lb_config"]])
	})

	#s3_backend_config: close({
		// The name of the Bucket
		bucket_name?: string

		// The region of the Bucket
		bucket_region?: string

		// Defines whether the bucket website feature is enabled.
		is_website?: bool
	})

	_#defs: "/$defs/lb_backend_config/$defs/lb_config": close({
		// Fully Qualified Domain Name (in the format
		// subdomain.example.com) to use in HTTP requests sent towards
		// your Load Balancer
		domain_name?: string

		// ID of the frontend linked to the Load Balancer
		frontend_id?: string

		// Defines whether to forward websocket requests to the load
		// balancer
		has_websocket?: bool

		// ID of the Load Balancer
		id?: string

		// Defines whether the Load Balancer's frontend handles SSL
		// connections
		is_ssl?: bool

		// The zone you want to attach the resource to
		zone?: string
	})
}
