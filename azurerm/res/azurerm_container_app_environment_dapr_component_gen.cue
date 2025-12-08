package res

#azurerm_container_app_environment_dapr_component: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_container_app_environment_dapr_component")
	close({
		// The Dapr Component Type. For example `state.azure.blobstorage`.
		component_type!: string

		// The Container App Managed Environment ID to configure this Dapr
		// component on.
		container_app_environment_id!: string

		// Should the Dapr sidecar to continue initialisation if the
		// component fails to load. Defaults to `false`
		ignore_errors?: bool
		id?:            string

		// The component initialisation timeout in ISO8601 format. e.g.
		// `5s`, `2h`, `1m`. Defaults to `5s`.
		init_timeout?: string

		// The name for this Dapr Component.
		name!: string

		// A list of scopes to which this component applies. e.g. a
		// Container App's `dapr.app_id` value.
		scopes?: [...string]
		metadata?: matchN(1, [#metadata, [...#metadata]])
		secret?: matchN(1, [#secret, [...#secret]])
		timeouts?: #timeouts

		// The version of the component.
		version!: string
	})

	#metadata: close({
		// The name of the Metadata configuration item.
		name!: string

		// The name of a secret specified in the `secrets` block that
		// contains the value for this metadata configuration item.
		secret_name?: string

		// The value for this metadata configuration item.
		value?: string
	})

	#secret: close({
		// The identity to use for accessing key vault reference.
		identity?: string

		// The Key Vault Secret ID. Could be either one of `id` or
		// `versionless_id`.
		key_vault_secret_id?: string

		// The secret name.
		name!: string

		// The value for this secret.
		value?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
