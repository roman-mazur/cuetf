package res

#cloudflare_zero_trust_dlp_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_zero_trust_dlp_settings")
	close({
		account_id!: string

		// Whether AI context analysis is enabled at the account level.
		ai_context_analysis?: bool
		id?:                  string

		// Whether OCR is enabled at the account level.
		ocr?: bool

		// Request model for payload log settings within the DLP settings
		// endpoint.
		// Unlike the legacy endpoint, null and missing are treated
		// identically here
		// (both mean "not provided" for PATCH, "reset to default" for
		// PUT).
		payload_logging?: close({
			// Masking level for payload logs.
			//
			// - `full`: The entire payload is masked.
			// - `partial`: Only partial payload content is masked.
			// - `clear`: No masking is applied to the payload content.
			// - `default`: DLP uses its default masking behavior.
			// Available values: "full", "partial", "clear", "default".
			masking_level?: string

			// Base64-encoded public key for encrypting payload logs.
			//
			// - Set to a non-empty base64 string to enable payload logging
			// with the given key.
			// - Set to an empty string to disable payload logging.
			// - Omit or set to null to leave unchanged (PATCH) or reset to
			// disabled (PUT).
			public_key?: string
		})
	})
}
