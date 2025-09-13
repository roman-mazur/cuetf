package data

#cloudflare_r2_custom_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_custom_domain")
	close({
		// Account ID.
		account_id!: string

		// Name of the bucket.
		bucket_name!: string

		// Name of the custom domain.
		domain!: string

		// Whether this bucket is publicly accessible at the specified
		// custom domain.
		enabled?: bool
		status?: close({
			// Ownership status of the domain.
			// Available values: "pending", "active", "deactivated",
			// "blocked", "error", "unknown".
			ownership?: string

			// SSL certificate status.
			// Available values: "initializing", "pending", "active",
			// "deactivated", "error", "unknown".
			ssl?: string
		})

		// Minimum TLS Version the custom domain will accept for incoming
		// connections. If not set, defaults to 1.0.
		// Available values: "1.0", "1.1", "1.2", "1.3".
		min_tls?: string

		// Zone ID of the custom domain resides in.
		zone_id?: string

		// Zone that the custom domain resides in.
		zone_name?: string
	})
}
