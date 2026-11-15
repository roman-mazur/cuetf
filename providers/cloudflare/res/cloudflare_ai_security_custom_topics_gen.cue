package res

cloudflare_ai_security_custom_topics: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_ai_security_custom_topics")
	close({
		// Defines the zone.
		id?: string

		// Custom topic categories for AI Security for Apps content detection.
		topics?: matchN(1, [close({
			// Unique label identifier. Must contain only lowercase letters (a–z), digits (0–9), and hyphens.
			label!: string

			// Description of the topic category. Must contain 2–50 UTF-8 bytes. Text in any
			// language is supported, including spaces, numbers, punctuation, and symbols.
			// Tabs, line breaks, invalid text, and invisible formatting characters are not
			// allowed.
			topic!: string
		}), [...close({
			// Unique label identifier. Must contain only lowercase letters (a–z), digits (0–9), and hyphens.
			label!: string

			// Description of the topic category. Must contain 2–50 UTF-8 bytes. Text in any
			// language is supported, including spaces, numbers, punctuation, and symbols.
			// Tabs, line breaks, invalid text, and invisible formatting characters are not
			// allowed.
			topic!: string
		})]])

		// Defines the zone.
		zone_id!: string
	})
}
