package data

#cloudflare_zero_trust_gateway_logging: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_logging")
	close({
		account_id!: string

		// Redact personally identifiable information from activity
		// logging (PII fields are: source IP, user email, user ID,
		// device ID, URL, referrer, user agent).
		redact_pii?: bool

		// Logging settings by rule type.
		settings_by_rule_type?: close({
			dns?: close({
				// Log all requests to this service.
				log_all?: bool

				// Log only blocking requests to this service.
				log_blocks?: bool
			})
			http?: close({
				// Log all requests to this service.
				log_all?: bool

				// Log only blocking requests to this service.
				log_blocks?: bool
			})
			l4?: close({
				// Log all requests to this service.
				log_all?: bool

				// Log only blocking requests to this service.
				log_blocks?: bool
			})
		})
	})
}
