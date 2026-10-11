package data

scaleway_messageq_node_type: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_messageq_node_type")
	close({
		// Available storage options for the node type
		available_volume_types?: matchN(1, [close({
			// Volume size increment in GB
			chunk_size_in_gb?: number

			// Volume type description
			description?: string

			// Maximum volume size in GB
			max_size_in_gb?: number

			// Minimum volume size in GB
			min_size_in_gb?: number

			// Volume type
			type?: string
		}), [...close({
			// Volume size increment in GB
			chunk_size_in_gb?: number

			// Volume type description
			description?: string

			// Maximum volume size in GB
			max_size_in_gb?: number

			// Minimum volume size in GB
			min_size_in_gb?: number

			// Volume type
			type?: string
		})]])

		// Whether the node type is in beta
		beta?: bool

		// Description of the node type
		description?: string

		// Whether the node type is disabled
		disabled?: bool

		// The ID of the node type, in the `{region}/{name}` format.
		id?: string

		// Instance range associated with the node type offer
		instance_range?: string

		// Amount of memory available in GB
		memory_size_in_gb?: number

		// The node type name
		name!: string

		// The region the node type is available in.
		region?: string

		// Stock status of the node type
		stock_status?: string

		// Number of vCPUs available
		vcpus?: number
	})
}
