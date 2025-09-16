package data

#cloudflare_account_dns_settings_internal_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_dns_settings_internal_view")
	close({
		// Identifier.
		account_id!: string

		// When the view was created.
		created_time?: string

		// Identifier.
		id?: string

		// When the view was last modified.
		modified_time?: string
		filter?: close({
			// Direction to order DNS views in.
			// Available values: "asc", "desc".
			direction?: string

			// Whether to match all search requirements or at least one (any).
			// If set to `all`, acts like a logical AND between filters. If
			// set to `any`, acts like a logical OR instead.
			// Available values: "any", "all".
			match?: string

			// Field to order DNS views by.
			// Available values: "name", "created_on", "modified_on".
			order?: string

			// A zone ID that exists in the zones list for the view.
			zone_id?: string
			name?: close({
				// Substring of the DNS view name.
				contains?: string

				// Suffix of the DNS view name.
				endswith?: string

				// Exact value of the DNS view name.
				exact?: string

				// Prefix of the DNS view name.
				startswith?: string
			})

			// A zone name that exists in the zones list for the view.
			zone_name?: string
		})

		// The name of the view.
		name?: string

		// Identifier.
		view_id?: string

		// The list of zones linked to this view.
		zones?: [...string]
	})
}
