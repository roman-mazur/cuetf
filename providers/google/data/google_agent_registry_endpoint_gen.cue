package data

google_agent_registry_endpoint: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_agent_registry_endpoint")
	close({
		// Attributes of the Endpoint.
		attributes?: [string]: string

		// Create time.
		create_time?: string

		// The description of the endpoint.
		description?: string

		// The display name of the endpoint.
		display_name?: string

		// The unique identifier for the Endpoint.
		endpoint_id?: string

		// A filter string that identifies a unique endpoint.
		filter?: string
		id?:     string

		// The connection details for the Endpoint.
		interfaces?: [...close({
			protocol_binding?: string
			url?:              string
		})]

		// The location of the resource.
		location!: string
		project?:  string

		// Update time.
		update_time?: string

		// The URN of the Endpoint.
		urn?: string
	})
}
