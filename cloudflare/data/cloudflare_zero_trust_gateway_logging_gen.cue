package data

#cloudflare_zero_trust_gateway_logging: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_gateway_logging")
	close({
		account_id!: string

		// Indicate whether to redact personally identifiable information
		// from activity logging (PII fields include source IP, user
		// email, user ID, device ID, URL, referrer, and user agent).
		redact_pii?: bool

		// Configure logging settings for each rule type.
		settings_by_rule_type?: close({
			// Configure logging settings for DNS firewall.
			dns?: close({
				// Specify whether to log all requests to this service.
				log_all?: bool

				// Specify whether to log only blocking requests to this service.
				log_blocks?: bool
			})

			// Configure logging settings for HTTP/HTTPS firewall.
			http?: close({
				// Specify whether to log all requests to this service.
				log_all?: bool

				// Specify whether to log only blocking requests to this service.
				log_blocks?: bool
			})

			// Configure logging settings for Network firewall.
			l4?: close({
				// Specify whether to log all requests to this service.
				log_all?: bool

				// Specify whether to log only blocking requests to this service.
				log_blocks?: bool
			})
		})
	})
}
