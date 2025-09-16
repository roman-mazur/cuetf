package data

#cloudflare_email_security_trusted_domains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_security_trusted_domains")
	close({
		// Account Identifier
		account_id!: string
		comments?:   string
		created_at?: string

		// The unique identifier for the trusted domain.
		id?: number

		// Select to prevent recently registered domains from triggering a
		// Suspicious or Malicious disposition.
		is_recent?: bool
		is_regex?:  bool

		// Select for partner or other approved domains that have similar
		// spelling to your connected domains. Prevents listed domains
		// from
		// triggering a Spoof disposition.
		is_similarity?: bool
		last_modified?: string
		pattern?:       string
		filter?: close({
			// The sorting direction.
			// Available values: "asc", "desc".
			direction?:     string
			is_recent?:     bool
			is_similarity?: bool

			// The field to sort by.
			// Available values: "pattern", "created_at".
			order?:   string
			pattern?: string

			// Allows searching in multiple properties of a record
			// simultaneously.
			// This parameter is intended for human users, not automation. Its
			// exact
			// behavior is intentionally left unspecified and is subject to
			// change
			// in the future.
			search?: string
		})

		// The unique identifier for the trusted domain.
		trusted_domain_id?: number
	})
}
