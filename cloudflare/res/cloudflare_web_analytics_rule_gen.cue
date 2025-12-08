package res

#cloudflare_web_analytics_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_web_analytics_rule")
	close({
		// Identifier.
		account_id!: string

		// The Web Analytics rule identifier.
		id?:      string
		created?: string
		host?:    string

		// Whether the rule includes or excludes traffic from being
		// measured.
		inclusive?: bool

		// Whether the rule is paused or not.
		is_paused?: bool
		paths?: [...string]
		priority?: number

		// The Web Analytics ruleset identifier.
		ruleset_id!: string
	})
}
