package data

#cloudflare_turnstile_widgets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_turnstile_widgets")
	close({
		// Identifier
		account_id!: string

		// Direction to order widgets.
		// Available values: "asc", "desc".
		direction?: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// If bot_fight_mode is set to `true`, Cloudflare issues
			// computationally
			// expensive challenges in response to malicious bots (ENT only).
			bot_fight_mode?: bool

			// If Turnstile is embedded on a Cloudflare site and the widget
			// should grant challenge clearance,
			// this setting can determine the clearance level to be set
			// Available values: "no_clearance", "jschallenge", "managed",
			// "interactive".
			clearance_level?: string

			// When the widget was created.
			created_on?: string

			// Return the Ephemeral ID in /siteverify (ENT only).
			ephemeral_id?: bool
			domains?: [...string]

			// Widget item identifier tag.
			id?: string

			// Widget Mode
			// Available values: "non-interactive", "invisible", "managed".
			mode?: string

			// When the widget was modified.
			modified_on?: string

			// Human readable widget name. Not unique. Cloudflare suggests
			// that you
			// set this to a meaningful string to make it easier to identify
			// your
			// widget, and where it is used.
			name?: string

			// Do not show any Cloudflare branding on the widget (ENT only).
			offlabel?: bool

			// Region where this widget can be used. This cannot be changed
			// after creation.
			// Available values: "world", "china".
			region?: string

			// Widget item identifier tag.
			sitekey?: string
		}), [...close({
			// If bot_fight_mode is set to `true`, Cloudflare issues
			// computationally
			// expensive challenges in response to malicious bots (ENT only).
			bot_fight_mode?: bool

			// If Turnstile is embedded on a Cloudflare site and the widget
			// should grant challenge clearance,
			// this setting can determine the clearance level to be set
			// Available values: "no_clearance", "jschallenge", "managed",
			// "interactive".
			clearance_level?: string

			// When the widget was created.
			created_on?: string

			// Return the Ephemeral ID in /siteverify (ENT only).
			ephemeral_id?: bool
			domains?: [...string]

			// Widget item identifier tag.
			id?: string

			// Widget Mode
			// Available values: "non-interactive", "invisible", "managed".
			mode?: string

			// When the widget was modified.
			modified_on?: string

			// Human readable widget name. Not unique. Cloudflare suggests
			// that you
			// set this to a meaningful string to make it easier to identify
			// your
			// widget, and where it is used.
			name?: string

			// Do not show any Cloudflare branding on the widget (ENT only).
			offlabel?: bool

			// Region where this widget can be used. This cannot be changed
			// after creation.
			// Available values: "world", "china".
			region?: string

			// Widget item identifier tag.
			sitekey?: string
		})]])

		// Max items to fetch, default: 1000
		max_items?: number

		// Field to order widgets by.
		// Available values: "id", "sitekey", "name", "created_on",
		// "modified_on".
		order?: string
	})
}
