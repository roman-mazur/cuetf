package res

#google_service_directory_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_directory_endpoint")
	close({
		// IPv4 or IPv6 address of the endpoint.
		address?: string

		// The Resource ID must be 1-63 characters long, including digits,
		// lowercase letters or the hyphen character.
		endpoint_id!: string

		// Metadata for the endpoint. This data can be consumed
		// by service clients. The entire metadata dictionary may contain
		// up to 512 characters, spread across all key-value pairs.
		// Metadata that goes beyond any these limits will be rejected.
		metadata?: [string]: string
		id?: string

		// The resource name for the endpoint in the format
		// 'projects/*/locations/*/namespaces/*/services/*/endpoints/*'.
		name?: string

		// The URL to the network, such as
		// projects/PROJECT_NUMBER/locations/global/networks/NETWORK_NAME.
		network?: string

		// Port that the endpoint is running on, must be in the
		// range of [0, 65535]. If unspecified, the default is 0.
		port?: number

		// The resource name of the service that this endpoint provides.
		service!:  string
		timeouts?: #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
