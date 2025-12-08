package data

#cloudflare_web_analytics_sites: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_web_analytics_sites")
	close({
		// Identifier.
		account_id!: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// If enabled, the JavaScript snippet is automatically injected
			// for orange-clouded sites.
			auto_install?: bool

			// The Web Analytics site identifier.
			id?: string

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
			created?: string

			// The Web Analytics site identifier.
			site_tag?: string
			ruleset?: close({
				// Whether the ruleset is enabled.
				enabled?: bool

				// The Web Analytics ruleset identifier.
				id?:        string
				zone_name?: string

				// The zone identifier.
				zone_tag?: string
			})

			// The Web Analytics site token.
			site_token?: string

			// Encoded JavaScript snippet.
			snippet?: string
		}), [...close({
			// If enabled, the JavaScript snippet is automatically injected
			// for orange-clouded sites.
			auto_install?: bool

			// The Web Analytics site identifier.
			id?: string

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
			created?: string

			// The Web Analytics site identifier.
			site_tag?: string
			ruleset?: close({
				// Whether the ruleset is enabled.
				enabled?: bool

				// The Web Analytics ruleset identifier.
				id?:        string
				zone_name?: string

				// The zone identifier.
				zone_tag?: string
			})

			// The Web Analytics site token.
			site_token?: string

			// Encoded JavaScript snippet.
			snippet?: string
		})]])

		// The property used to sort the list of results.
		// Available values: "host", "created".
		order_by?: string
	})
}
