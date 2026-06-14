package data

#cloudflare_oauth_scopes: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_oauth_scopes")
	close({
		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Category for grouping scopes in the UI.
			category?: string

			// The scope label to use in the scopes array when creating or
			// updating an OAuth client.
			id?: string

			// Human-readable name of the OAuth scope.
			name?: string

			// The underlying resource scopes (Bach scopes) that define which
			// resources this OAuth scope can act upon.
			scopes?: [...string]
		}), [...close({
			// Category for grouping scopes in the UI.
			category?: string

			// The scope label to use in the scopes array when creating or
			// updating an OAuth client.
			id?: string

			// Human-readable name of the OAuth scope.
			name?: string

			// The underlying resource scopes (Bach scopes) that define which
			// resources this OAuth scope can act upon.
			scopes?: [...string]
		})]])
	})
}
