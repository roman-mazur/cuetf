package data

#cloudflare_user_agent_blocking_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_user_agent_blocking_rule")
	close({
		configuration?: close({
			target?: string
			value?:  string
		})
		description?: string
		id?:          string
		mode?:        string
		paused?:      bool
		ua_rule_id?:  string
		filter?: close({
			description?: string
			paused?:      bool
			user_agent?:  string
		})
		zone_id!: string
	})
}
