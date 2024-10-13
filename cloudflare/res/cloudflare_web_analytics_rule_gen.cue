package res

#cloudflare_web_analytics_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_web_analytics_rule")
	account_id!: string
	host!:       string
	id?:         string
	inclusive!:  bool
	is_paused!:  bool
	paths!: [...string]
	ruleset_id!: string
	timeouts?:   #timeouts

	#timeouts: create?: string
}
