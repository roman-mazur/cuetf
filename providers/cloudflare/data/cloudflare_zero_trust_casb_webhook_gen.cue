package data

cloudflare_zero_trust_casb_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_casb_webhook")
	close({
		account_id!: string

		// Type of authentication used for the webhook.
		// Available values: "Basic Auth", "None", "Bearer Auth", "Static Headers", "HMAC-Signing".
		authentication_type?: string

		// Timestamp when the webhook configuration was created.
		created_at?: string

		// Target URL for the webhook configuration. Where resulting data will be sent.
		destination_url?: string

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
		version?:    number
		webhook_id!: string
	})
}
