package data

cloudflare_flagship_apps: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_flagship_apps")
	close({
		// Cloudflare account ID.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			created_at?: string

			// Email of the actor who last modified the app, or `edge-gateway` for
			// gateway-authenticated changes.
			updated_by?: string
			id?:         string
			name?:       string
			updated_at?: string
		}), [...close({
			created_at?: string

			// Email of the actor who last modified the app, or `edge-gateway` for
			// gateway-authenticated changes.
			updated_by?: string
			id?:         string
			name?:       string
			updated_at?: string
		})]])
	})
}
