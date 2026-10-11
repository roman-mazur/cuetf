package res

cloudflare_flagship_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_flagship_app")
	close({
		// Cloudflare account ID that owns the Flagship app.
		account_id!: string
		created_at?: string
		id?:         string

		// Name of the Flagship app (1–64 letters, numbers, hyphens, or underscores).
		name!:       string
		updated_at?: string

		// Email of the actor who last modified the app, or `edge-gateway` for
		// gateway-authenticated changes.
		updated_by?: string
	})
}
