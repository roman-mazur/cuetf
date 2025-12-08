package res

#cloudflare_web_analytics_site: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_web_analytics_site")
	close({
		// Identifier.
		account_id!: string

		// A list of rules.
		rules?: matchN(1, [close({
			created?: string

			// The hostname the rule will be applied to.
			host?: string

			// The Web Analytics rule identifier.
			id?: string

			// Whether the rule includes or excludes traffic from being
			// measured.
			inclusive?: bool

			// Whether the rule is paused or not.
			is_paused?: bool

			// The paths the rule will be applied to.
			paths?: [...string]
			priority?: number
		}), [...close({
			created?: string

			// The hostname the rule will be applied to.
			host?: string

			// The Web Analytics rule identifier.
			id?: string

			// Whether the rule includes or excludes traffic from being
			// measured.
			inclusive?: bool

			// Whether the rule is paused or not.
			is_paused?: bool

			// The paths the rule will be applied to.
			paths?: [...string]
			priority?: number
		})]])

		// If enabled, the JavaScript snippet is automatically injected
		// for orange-clouded sites.
		auto_install?: bool

		// Enables or disables RUM. This option can be used only when
		// auto_install is set to true.
		enabled?: bool

		// The hostname to use for gray-clouded sites.
		host?:    string
		created?: string

		// The Web Analytics site identifier.
		id?: string
		ruleset?: close({
			// Whether the ruleset is enabled.
			enabled?: bool

			// The Web Analytics ruleset identifier.
			id?:        string
			zone_name?: string

			// The zone identifier.
			zone_tag?: string
		})

		// If enabled, the JavaScript snippet will not be injected for
		// visitors from the EU.
		lite?: bool

		// The Web Analytics site identifier.
		site_tag?: string

		// The Web Analytics site token.
		site_token?: string

		// Encoded JavaScript snippet.
		snippet?: string

		// The zone identifier.
		zone_tag?: string
	})
}
