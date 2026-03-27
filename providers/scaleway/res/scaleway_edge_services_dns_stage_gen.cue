package res

#scaleway_edge_services_dns_stage: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_edge_services_dns_stage")
	close({
		// The backend stage ID the DNS stage will be linked to
		backend_stage_id?: string

		// The cache stage ID the DNS stage will be linked to
		cache_stage_id?: string

		// The date and time of the creation of the DNS stage
		created_at?: string

		// Default Fully Qualified Domain Name attached to the stage
		default_fqdn?: string

		// Fully Qualified Domain Name (in the format
		// subdomain.example.com) to attach to the stage
		fqdns?: [...string]
		id?: string

		// The ID of the pipeline
		pipeline_id!: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The TLS stage ID the DNS stage will be linked to
		tls_stage_id?: string

		// The type of the stage
		type?: string

		// The date and time of the last update of the DNS stage
		updated_at?: string
	})
}
