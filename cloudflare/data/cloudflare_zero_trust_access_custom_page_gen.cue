package data

#cloudflare_zero_trust_access_custom_page: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_custom_page")
	close({
		// Identifier.
		account_id!: string

		// Number of apps the custom page is assigned to.
		app_count?:  number
		created_at?: string

		// Custom page HTML.
		custom_html?: string

		// UUID.
		custom_page_id?: string

		// UUID.
		id?: string

		// Custom page name.
		name?: string

		// Custom page type.
		// Available values: "identity_denied", "forbidden".
		type?: string

		// UUID.
		uid?:        string
		updated_at?: string
	})
}
