package data

cloudflare_zero_trust_access_custom_page: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_access_custom_page")
	close({
		// Identifier.
		account_id?: string

		// Contract version of the page's Liquid template. Present (>= 1) marks a
		// sanitized template; absent or 0 marks a legacy page served verbatim.
		contract_version?: number

		// Custom page HTML.
		custom_html?: string

		// UUID.
		custom_page_id!: string

		// UUID.
		id?: string

		// Custom page name.
		name?: string

		// Custom page type.
		// Available values: "identity_denied", "forbidden", "login", "interstitial".
		type?: string

		// UUID.
		uid?: string
	})
}
