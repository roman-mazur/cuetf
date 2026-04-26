package data

#cloudflare_zero_trust_dlp_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_dlp_settings")
	close({
		account_id!: string

		// Whether AI context analysis is enabled at the account level.
		ai_context_analysis?: bool
		id?:                  string

		// Whether OCR is enabled at the account level.
		ocr?: bool
		payload_logging?: close({
			// Masking level for payload logs.
			//
			// - `full`: The entire payload is masked.
			// - `partial`: Only partial payload content is masked.
			// - `clear`: No masking is applied to the payload content.
			// - `default`: DLP uses its default masking behavior.
			// Available values: "full", "partial", "clear", "default".
			masking_level?: string

			// Base64-encoded public key for encrypting payload logs. Null
			// when payload logging is disabled.
			public_key?: string
			updated_at?: string
		})
	})
}
