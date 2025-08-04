package res

#elasticstack_fleet_server_host: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_server_host")
	close({
		// Set as default.
		default?: bool

		// Unique identifier of the Fleet server host.
		host_id?: string

		// A list of hosts.
		hosts!: [...string]

		// The ID of this resource.
		id?: string

		// The name of the Fleet server host.
		name!: string
	})
}
