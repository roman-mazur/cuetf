package data

cloudflare_flagship_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_flagship_app")
	close({
		// Cloudflare account ID.
		account_id!: string

		// App identifier.
		app_id!:     string
		created_at?: string

		// App identifier.
		id?:         string
		name?:       string
		updated_at?: string

		// Email of the actor who last modified the app, or `edge-gateway` for
		// gateway-authenticated changes.
		updated_by?: string
	})
}
