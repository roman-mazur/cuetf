package res

#cloudflare_zero_trust_dlp_predefined_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dlp_predefined_entry")
	close({
		confidence?: close({
			// Indicates whether this entry has AI remote service validation.
			ai_context_available?: bool

			// Indicates whether this entry has any form of validation that is
			// not an AI remote service.
			available?: bool
		})

		// This field is not actually used as the owning profile for a
		// predefined entry is already set
		// to a predefined profile
		profile_id?: string
		account_id!: string
		enabled!:    bool
		entry_id!:   string
		id?:         string
		name?:       string
	})
}
