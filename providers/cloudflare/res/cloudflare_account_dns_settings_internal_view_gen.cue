package res

#cloudflare_account_dns_settings_internal_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_account_dns_settings_internal_view")
	close({
		// Identifier.
		account_id!: string

		// When the view was created.
		created_time?: string

		// Identifier.
		id?: string

		// When the view was last modified.
		modified_time?: string

		// The name of the view.
		name!: string

		// The list of zones linked to this view.
		zones!: [...string]
	})
}
