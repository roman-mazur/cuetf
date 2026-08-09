package res

cloudflare_turnstile_widget: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_turnstile_widget")
	close({
		// Identifier
		account_id!: string

		// If bot_fight_mode is set to `true`, Cloudflare issues computationally
		// expensive challenges in response to malicious bots (ENT only).
		bot_fight_mode?: bool

		// If Turnstile is embedded on a Cloudflare site and the widget should grant challenge clearance,
		// this setting can determine the clearance level to be set
		// Available values: "no_clearance", "jschallenge", "managed", "interactive".
		clearance_level?: string

		// When the widget was created.
		created_on?: string

		// Origin that created this widget, recorded at creation time and
		// immutable afterward. Server-derived from the create request; not
		// client-settable. Omitted from the response for widgets created
		// before this field existed.
		// Available values: "wrangler", "dashboard", "spin", "api", "unknown".
		deployed_via?: string
		domains!: [...string]

		// Return the Ephemeral ID in /siteverify (ENT only).
		ephemeral_id?: bool

		// Widget item identifier tag.
		id?: string

		// Origin of the most recent mutation (create, update, delete, or
		// secret rotation). Server-derived; not client-settable. Omitted for
		// widgets last mutated before this field existed.
		// Available values: "wrangler", "dashboard", "spin", "api", "unknown".
		last_modified_via?: string

		// Widget Mode
		// Available values: "non-interactive", "invisible", "managed".
		mode!: string

		// When the widget was modified.
		modified_on?: string

		// Human readable widget name. Not unique. Cloudflare suggests that you
		// set this to a meaningful string to make it easier to identify your
		// widget, and where it is used.
		name!: string

		// Do not show any Cloudflare branding on the widget (ENT only).
		offlabel?: bool

		// Region where this widget can be used. This cannot be changed after creation.
		// Available values: "world", "china".
		region?: string

		// Secret key for this widget.
		secret?: string

		// Widget item identifier tag.
		sitekey?: string
	})
}
