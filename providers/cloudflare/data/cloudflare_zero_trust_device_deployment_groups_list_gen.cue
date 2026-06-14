package data

#cloudflare_zero_trust_device_deployment_groups_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_device_deployment_groups_list")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The RFC3339Nano timestamp when the deployment group was
			// created.
			created_at?: string

			// The ID of the deployment group.
			id?: string

			// A user-friendly name for the deployment group.
			name?: string

			// Contains a list of policy IDs assigned to this deployment
			// group.
			policy_ids?: [...string]

			// The RFC3339Nano timestamp when the deployment group was last
			// updated.
			updated_at?: string

			// Contains version configurations for different target
			// environments.
			version_config?: matchN(1, [close({
				// The target environment for the client version (e.g., windows,
				// macos).
				target_environment?: string

				// The specific client version to deploy.
				version?: string
			}), [...close({
				// The target environment for the client version (e.g., windows,
				// macos).
				target_environment?: string

				// The specific client version to deploy.
				version?: string
			})]])
		}), [...close({
			// The RFC3339Nano timestamp when the deployment group was
			// created.
			created_at?: string

			// The ID of the deployment group.
			id?: string

			// A user-friendly name for the deployment group.
			name?: string

			// Contains a list of policy IDs assigned to this deployment
			// group.
			policy_ids?: [...string]

			// The RFC3339Nano timestamp when the deployment group was last
			// updated.
			updated_at?: string

			// Contains version configurations for different target
			// environments.
			version_config?: matchN(1, [close({
				// The target environment for the client version (e.g., windows,
				// macos).
				target_environment?: string

				// The specific client version to deploy.
				version?: string
			}), [...close({
				// The target environment for the client version (e.g., windows,
				// macos).
				target_environment?: string

				// The specific client version to deploy.
				version?: string
			})]])
		})]])
	})
}
