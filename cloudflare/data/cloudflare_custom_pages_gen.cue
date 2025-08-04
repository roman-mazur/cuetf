package data

#cloudflare_custom_pages: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_custom_pages")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?:  string
		created_on?:  string
		description?: string

		// Error Page Types
		// Available values: "under_attack", "basic_challenge",
		// "waf_challenge", "waf_block", "ip_block", "country_challenge",
		// "500_errors", "1000_errors", "managed_challenge",
		// "ratelimit_block".
		identifier!: string
		id?:         string

		// The custom page state.
		// Available values: "default", "customized".
		state?:          string
		modified_on?:    string
		preview_target?: string
		required_tokens?: [...string]

		// The URL associated with the custom page.
		url?: string

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
