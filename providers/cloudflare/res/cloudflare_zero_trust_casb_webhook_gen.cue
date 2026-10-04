package res

cloudflare_zero_trust_casb_webhook: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_casb_webhook")
	close({
		account_id!: string

		// Type of authentication used for the webhook.
		// Available values: "Basic Auth", "None", "Bearer Auth", "Static Headers", "HMAC-Signing".
		authentication_type!: string

		// Timestamp when the webhook configuration was created.
		created_at?: string

		// Target URL for the webhook configuration. Where resulting data will be sent.
		destination_url!: string

		// List of custom headers to include in webhook requests.
		headers?: matchN(1, [close({
			// Header key name.
			key!: string

			// Header value. Required on Create and Evaluate. On Update, omit or set to null
			// to keep existing value.
			value?: string
		}), [...close({
			// Header key name.
			key!: string

			// Header value. Required on Create and Evaluate. On Update, omit or set to null
			// to keep existing value.
			value?: string
		})]])

		// Unique identifier for the specific webhook configuration.
		id?: string

		// Account-specified display label for the webhook configuration.
		label!: string

		// Secret key used for HMAC signing when authentication_type is "HMAC-Signing".
		signing_secret?: string

		// Status of the webhook configuration. Defaults to enabled when omitted.
		// Available values: "enabled", "disabled".
		status?: string

		// Timestamp when the webhook configuration was last updated.
		updated_at?: string

		// Version number of the configuration.
		version?: number
	})
}
