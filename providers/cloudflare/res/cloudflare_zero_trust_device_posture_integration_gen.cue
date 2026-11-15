package res

cloudflare_zero_trust_device_posture_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_device_posture_integration")
	close({
		account_id!: string

		// The configuration object containing third-party integration information.
		config!: close({
			// If present, this id will be passed in the `CF-Access-Client-ID` header when
			// hitting the `api_url`.
			//
			// This id will be passed in the `CF-Access-Client-ID` header when hitting the `api_url`.
			access_client_id?: string

			// If present, this secret will be passed in the `CF-Access-Client-Secret`
			// header when hitting the `api_url`.
			//
			// This secret will be passed in the `CF-Access-Client-Secret` header when hitting the `api_url`.
			access_client_secret?: string

			// The Workspace One API URL provided in the Workspace One Admin Dashboard.
			//
			// The Crowdstrike API URL.
			//
			// The Uptycs API URL.
			//
			// The Tanium API URL.
			//
			// The SentinelOne S2S API URL.
			//
			// The Custom Device Posture Integration API URL.
			api_url?: string

			// The Workspace One Authorization URL depending on your region.
			auth_url?: string

			// The Workspace One client ID provided in the Workspace One Admin Dashboard.
			//
			// The Crowdstrike client ID.
			//
			// The Intune client ID.
			//
			// The Kolide client ID.
			client_id?: string

			// The Uptycs client secret.
			client_key?: string

			// The Workspace One client secret provided in the Workspace One Admin Dashboard.
			//
			// The Crowdstrike client secret.
			//
			// The Uptycs client secret.
			//
			// The Intune client secret.
			//
			// The Kolide client secret.
			//
			// The Tanium client secret.
			//
			// The SentinelOne S2S client secret.
			client_secret?: string

			// The Crowdstrike customer ID.
			//
			// The Uptycs customer ID.
			//
			// The Intune customer ID.
			customer_id?: string
		})

		// API UUID.
		id?: string

		// The interval between each posture check with the third-party API. Use `m` for
		// minutes (e.g. `5m`) and `h` for hours (e.g. `12h`).
		interval!: string

		// The name of the device posture integration.
		name!: string

		// The type of device posture integration.
		// Available values: "workspace_one", "crowdstrike_s2s", "uptycs", "intune",
		// "kolide", "tanium_s2s", "sentinelone_s2s", "custom_s2s".
		type!: string
	})
}
