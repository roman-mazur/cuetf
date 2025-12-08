package res

#cloudflare_zero_trust_device_posture_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_device_posture_integration")
	close({
		// The configuration object containing third-party integration
		// information.
		config!: close({
			// If present, this id will be passed in the `CF-Access-Client-ID`
			// header when hitting the `api_url`.
			access_client_id?: string

			// If present, this secret will be passed in the
			// `CF-Access-Client-Secret` header when hitting the `api_url`.
			access_client_secret?: string

			// The Workspace One API URL provided in the Workspace One Admin
			// Dashboard.
			api_url?: string

			// The Workspace One Authorization URL depending on your region.
			auth_url?: string

			// The Workspace One client ID provided in the Workspace One Admin
			// Dashboard.
			client_id?: string

			// The Uptycs client secret.
			client_key?: string

			// The Workspace One client secret provided in the Workspace One
			// Admin Dashboard.
			client_secret?: string

			// The Crowdstrike customer ID.
			customer_id?: string
		})
		account_id!: string

		// API UUID.
		id?: string

		// The interval between each posture check with the third-party
		// API. Use `m` for minutes (e.g. `5m`) and `h` for hours (e.g.
		// `12h`).
		interval!: string

		// The name of the device posture integration.
		name!: string

		// The type of device posture integration.
		// Available values: "workspace_one", "crowdstrike_s2s", "uptycs",
		// "intune", "kolide", "tanium_s2s", "sentinelone_s2s",
		// "custom_s2s".
		type!: string
	})
}
