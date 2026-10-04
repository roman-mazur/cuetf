package data

cloudflare_zero_trust_casb_webhooks: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_casb_webhooks")
	close({
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Type of authentication used for the webhook.
			// Available values: "Basic Auth", "None", "Bearer Auth", "Static Headers", "HMAC-Signing".
			authentication_type?: string

			// List of header keys configured for this webhook. Values are not included for security reasons.
			headers?: matchN(1, [close({
				// Header key name (lowercase).
				key?: string

				// Header value. This field is never returned in API responses for security reasons.
				value?: string
			}), [...close({
				// Header key name (lowercase).
				key?: string

				// Header value. This field is never returned in API responses for security reasons.
				value?: string
			})]])

			// Timestamp when the webhook configuration was created.
			created_at?: string

			// Target URL for the webhook configuration. Where resulting data will be sent.
			destination_url?: string

			// Unique identifier for the specific webhook configuration.
			id?: string

			// Account-specified display label for the webhook configuration.
			label?: string

			// Current status of the webhook configuration. If disabled, data cannot be sent
			// through this configuration.
			// Available values: "enabled", "disabled".
			status?: string

			// Timestamp when the webhook configuration was last updated.
			updated_at?: string

			// Version number of the configuration.
			version?: number
		}), [...close({
			// Type of authentication used for the webhook.
			// Available values: "Basic Auth", "None", "Bearer Auth", "Static Headers", "HMAC-Signing".
			authentication_type?: string

			// List of header keys configured for this webhook. Values are not included for security reasons.
			headers?: matchN(1, [close({
				// Header key name (lowercase).
				key?: string

				// Header value. This field is never returned in API responses for security reasons.
				value?: string
			}), [...close({
				// Header key name (lowercase).
				key?: string

				// Header value. This field is never returned in API responses for security reasons.
				value?: string
			})]])

			// Timestamp when the webhook configuration was created.
			created_at?: string

			// Target URL for the webhook configuration. Where resulting data will be sent.
			destination_url?: string

			// Unique identifier for the specific webhook configuration.
			id?: string

			// Account-specified display label for the webhook configuration.
			label?: string

			// Current status of the webhook configuration. If disabled, data cannot be sent
			// through this configuration.
			// Available values: "enabled", "disabled".
			status?: string

			// Timestamp when the webhook configuration was last updated.
			updated_at?: string

			// Version number of the configuration.
			version?: number
		})]])
	})
}
