package res

#cloudflare_zero_trust_dlp_integration_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_integration_entry")
	close({
		account_id!: string
		created_at?: string

		// This field is not actually used as the owning profile for a
		// predefined entry is already set
		// to a predefined profile
		profile_id?: string
		enabled!:    bool
		entry_id!:   string
		id?:         string
		name?:       string
		updated_at?: string
	})
}
