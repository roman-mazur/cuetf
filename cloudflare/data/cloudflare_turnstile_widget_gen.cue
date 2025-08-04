package data

#cloudflare_turnstile_widget: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_turnstile_widget")
	close({
		account_id!:      string
		bot_fight_mode?:  bool
		clearance_level?: string
		created_on?:      string
		domains?: [...string]
		ephemeral_id?: bool
		id?:           string
		mode?:         string
		modified_on?:  string
		name?:         string
		offlabel?:     bool
		filter?: close({
			direction?: string
			order?:     string
		})
		region?:  string
		secret?:  string
		sitekey?: string
	})
}
