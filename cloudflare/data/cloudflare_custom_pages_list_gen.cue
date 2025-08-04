package data

#cloudflare_custom_pages_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_custom_pages_list")
	close({
		// The Account ID to use for this endpoint. Mutually exclusive
		// with the Zone ID.
		account_id?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			created_on?: string

			// The custom page state.
			// Available values: "default", "customized".
			state?:       string
			description?: string

			// The URL associated with the custom page.
			url?:            string
			id?:             string
			modified_on?:    string
			preview_target?: string
			required_tokens?: [...string]
		}), [...close({
			created_on?: string

			// The custom page state.
			// Available values: "default", "customized".
			state?:       string
			description?: string

			// The URL associated with the custom page.
			url?:            string
			id?:             string
			modified_on?:    string
			preview_target?: string
			required_tokens?: [...string]
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// The Zone ID to use for this endpoint. Mutually exclusive with
		// the Account ID.
		zone_id?: string
	})
}
