package res

#cloudflare_web_analytics_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_web_analytics_rule")
	close({
		account_id!: string
		created?:    string
		host?:       string
		id?:         string
		inclusive?:  bool
		is_paused?:  bool
		paths?: [...string]
		priority?:   number
		ruleset_id!: string
	})
}
