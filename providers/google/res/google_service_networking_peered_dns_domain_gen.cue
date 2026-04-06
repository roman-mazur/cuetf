package res

#google_service_networking_peered_dns_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_networking_peered_dns_domain")
	close({
		timeouts?: #timeouts

		// The DNS domain name suffix of the peered DNS domain.
		dns_suffix!: string
		id?:         string

		// Name of the peered DNS domain.
		name!: string

		// Network in the consumer project to peer with.
		network!: string
		parent?:  string

		// The ID of the project that the service account will be created
		// in. Defaults to the provider project configuration.
		project?: string

		// The name of the service to create a peered DNS domain for, e.g.
		// servicenetworking.googleapis.com
		service?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
