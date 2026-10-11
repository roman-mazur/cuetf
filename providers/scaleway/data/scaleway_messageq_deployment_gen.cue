package data

scaleway_messageq_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_messageq_deployment")
	close({
		// Date and time of deployment creation (RFC 3339 format)
		created_at?: string

		// The ID of the MessageQ deployment
		deployment_id?: string

		// List of endpoints
		endpoints?: matchN(1, [close({
			// Endpoint ID
			id?: string

			// List of services
			services?: matchN(1, [close({
				// Service name
				name?: string

				// Service port
				port?: number

				// Service URL
				url?: string
			}), [...close({
				// Service name
				name?: string

				// Service port
				port?: number

				// Service URL
				url?: string
			})]])

			// Private network ID if applicable
			private_network_id?: string

			// Whether the endpoint is public
			public?: bool
		}), [...close({
			// Endpoint ID
			id?: string

			// List of services
			services?: matchN(1, [close({
				// Service name
				name?: string

				// Service port
				port?: number

				// Service URL
				url?: string
			}), [...close({
				// Service name
				name?: string

				// Service port
				port?: number

				// Service URL
				url?: string
			})]])

			// Private network ID if applicable
			private_network_id?: string

			// Whether the endpoint is public
			public?: bool
		})]])

		// The ID of the MessageQ deployment, in the `{region}/{id}` format.
		id?: string

		// Name of the MessageQ deployment
		name?: string

		// Number of nodes
		node_count?: number

		// Type of node
		node_type?: string

		// The project ID the MessageQ deployment belongs to.
		project_id?: string

		// The region the MessageQ deployment is in.
		region?: string

		// The status of the deployment
		status?: string

		// List of tags applied to the deployment
		tags?: [...string]

		// Date and time of deployment last update (RFC 3339 format)
		updated_at?: string

		// MessageQ version
		version?: string

		// Volume configuration
		volume?: close({
			// Volume size in GB
			size_in_gb?: number

			// Volume type (sbs_5k, sbs_15k)
			type?: string
		})
	})
}
