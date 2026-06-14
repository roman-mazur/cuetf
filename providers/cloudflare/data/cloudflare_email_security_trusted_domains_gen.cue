package data

#cloudflare_email_security_trusted_domains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_email_security_trusted_domains")
	close({
		// Identifier.
		account_id?: string
		comments?:   string
		created_at?: string

		// Trusted domain identifier
		id?: string

		// Select to prevent recently registered domains from triggering a
		// Suspicious or Malicious disposition.
		is_recent?: bool
		is_regex?:  bool

		// Select for partner or other approved domains that have similar
		// spelling to your connected domains. Prevents listed domains
		// from triggering a Spoof disposition.
		is_similarity?: bool
		modified_at?:   string
		pattern?:       string

		// Trusted domain identifier
		trusted_domain_id?: string
		filter?: close({
			// The sorting direction.
			// Available values: "asc", "desc".
			direction?: string

			// Filter to show only recently registered domains that are
			// trusted to prevent triggering Suspicious or Malicious
			// dispositions.
			is_recent?: bool

			// Filter to show only proximity domains (partner or approved
			// domains with similar spelling to connected domains) that
			// prevent Spoof dispositions.
			is_similarity?: bool

			// Field to sort by.
			// Available values: "pattern", "created_at".
			order?:   string
			pattern?: string

			// Search term for filtering records. Behavior may change.
			search?: string
		})
	})
}
