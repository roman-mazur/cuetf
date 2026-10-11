package res

scaleway_messageq_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_messageq_deployment")
	close({
		// Date and time of deployment creation (RFC 3339 format)
		created_at?: string

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

		// Number of nodes. Can be updated via Upgrade without recreating the deployment
		node_count!: number

		// Type of node
		node_type!: string

		// Bootstrap password for the deployment user. Only one of `password` or
		// `password_wo` should be specified. Prefer scaleway_messageq_user for
		// password rotation
		password?: string

		// Bootstrap password for the deployment user in
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// mode. Only one of `password` or `password_wo` should be specified.
		// `password_wo` will not be set in the Terraform state. Bootstrap credentials
		// are immutable, so changing `password_wo_version` recreates the deployment:
		// use scaleway_messageq_user to rotate a password in place
		password_wo?: string

		// The version of the
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// password. To update the `password_wo`, you must also update the
		// `password_wo_version`
		password_wo_version?: number

		// Private network configuration
		private_network?: close({
			// UUID of the Private Network
			private_network_id!: string
		})

		// The project ID the MessageQ deployment belongs to.
		project_id?: string

		// The region the MessageQ deployment is in.
		region?: string

		// The status of the deployment
		status?: string

		// List of tags to apply
		tags?: [...string]

		// Date and time of deployment last update (RFC 3339 format)
		updated_at?: string

		// Bootstrap username for the deployment. Prefer scaleway_messageq_user for additional users
		user_name?: string

		// MessageQ version to use
		version!: string

		// Volume configuration
		volume?: close({
			// Volume size in GB. Can be updated via Upgrade without recreating the deployment
			size_in_gb!: number

			// Volume type (sbs_5k, sbs_15k)
			type!: string
		})
	})
}
