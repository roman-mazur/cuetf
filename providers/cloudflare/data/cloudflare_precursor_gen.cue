package data

cloudflare_precursor: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_precursor")
	close({
		// Identifier.
		id?: string

		// Controls Precursor detection for the zone. `off` disables detection,
		// `monitor` records detections without affecting bot scores, and `arm`
		// allows detections to affect bot scores.
		// Available values: "off", "monitor", "arm".
		mode?: string

		// The ordered list of Precursor rules for the zone.
		rules?: matchN(1, [close({
			// An informative description of the rule.
			description?: string

			// Whether the rule is active.
			enabled?: bool

			// The filter expression that determines which requests the rule matches.
			expression?: string

			// The read-only identifier that Cloudflare assigns to the rule.
			id?: string

			// Whether Precursor shows an interstitial when it takes action on a
			// request.
			show_interstitial?: bool
		}), [...close({
			// An informative description of the rule.
			description?: string

			// Whether the rule is active.
			enabled?: bool

			// The filter expression that determines which requests the rule matches.
			expression?: string

			// The read-only identifier that Cloudflare assigns to the rule.
			id?: string

			// Whether Precursor shows an interstitial when it takes action on a
			// request.
			show_interstitial?: bool
		})]])

		// Whether Precursor shows an interstitial when it takes action on a
		// request.
		show_interstitial?: bool

		// Identifier.
		zone_id!: string
	})
}
