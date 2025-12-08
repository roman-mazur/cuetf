package res

#cloudflare_email_security_trusted_domains: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_email_security_trusted_domains")
	close({
		// Account Identifier
		account_id!: string
		comments?:   string
		created_at?: string

		// The unique identifier for the trusted domain.
		id?: number
		body?: matchN(1, [close({
			comments?: string

			// Select to prevent recently registered domains from triggering a
			// Suspicious or Malicious disposition.
			is_recent!: bool
			is_regex!:  bool

			// Select for partner or other approved domains that have similar
			// spelling to your connected domains. Prevents listed domains
			// from
			// triggering a Spoof disposition.
			is_similarity!: bool
			pattern!:       string
		}), [...close({
			comments?: string

			// Select to prevent recently registered domains from triggering a
			// Suspicious or Malicious disposition.
			is_recent!: bool
			is_regex!:  bool

			// Select for partner or other approved domains that have similar
			// spelling to your connected domains. Prevents listed domains
			// from
			// triggering a Spoof disposition.
			is_similarity!: bool
			pattern!:       string
		})]])

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
	})
}
