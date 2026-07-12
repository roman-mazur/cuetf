package res

cloudflare_zero_trust_device_deployment_groups: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_device_deployment_groups")
	close({
		account_id!: string

		// The RFC3339Nano timestamp when the deployment group was created.
		created_at?: string

		// The ID of the deployment group.
		id?: string

		// A user-friendly name for the deployment group.
		name!: string

		// Contains an optional list of policy IDs assigned to a group.
		policy_ids?: [...string]

		// The RFC3339Nano timestamp when the deployment group was last updated.
		updated_at?: string

		// Contains at least one version configuration.
		version_config!: matchN(1, [close({
			// The target environment for the client version (e.g., windows, macos).
			target_environment!: string

			// The specific client version to deploy.
			version!: string
		}), [...close({
			// The target environment for the client version (e.g., windows, macos).
			target_environment!: string

			// The specific client version to deploy.
			version!: string
		})]])
	})
}
