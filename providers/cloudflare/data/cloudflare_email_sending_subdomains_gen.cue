package data

cloudflare_email_sending_subdomains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_sending_subdomains")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// The date and time the destination address has been created.
			created?: string

			// The DKIM selector used for email signing. Wildcard rows publish the selector
			// and sign with `d=<base>`.
			dkim_selector?: string

			// Whether a send request that includes a recipient suppressed on
			// this subdomain drops that recipient and still delivers to the
			// rest, instead of failing the entire request.
			drop_suppressed_recipients?: bool

			// Whether Email Sending is enabled on this subdomain.
			enabled?: bool

			// Sending subdomain identifier.
			id?: string

			// The date and time the destination address was last modified.
			modified?: string

			// The exact domain name or a leftmost wildcard such as `*.example.com`.
			name?: string

			// Whether sent messages from this subdomain can be previewed in the activity log.
			preview_enabled?: bool

			// The return-path domain used for bounce handling. Wildcard rows use `cf-bounce.<base>`.
			return_path_domain?: string

			// Sending subdomain identifier.
			tag?: string
		}), [...close({
			// The date and time the destination address has been created.
			created?: string

			// The DKIM selector used for email signing. Wildcard rows publish the selector
			// and sign with `d=<base>`.
			dkim_selector?: string

			// Whether a send request that includes a recipient suppressed on
			// this subdomain drops that recipient and still delivers to the
			// rest, instead of failing the entire request.
			drop_suppressed_recipients?: bool

			// Whether Email Sending is enabled on this subdomain.
			enabled?: bool

			// Sending subdomain identifier.
			id?: string

			// The date and time the destination address was last modified.
			modified?: string

			// The exact domain name or a leftmost wildcard such as `*.example.com`.
			name?: string

			// Whether sent messages from this subdomain can be previewed in the activity log.
			preview_enabled?: bool

			// The return-path domain used for bounce handling. Wildcard rows use `cf-bounce.<base>`.
			return_path_domain?: string

			// Sending subdomain identifier.
			tag?: string
		})]])

		// Identifier.
		zone_id!: string
	})
}
