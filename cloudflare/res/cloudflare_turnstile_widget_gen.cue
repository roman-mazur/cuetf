package res

#cloudflare_turnstile_widget: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_turnstile_widget")
	account_id:      string
	bot_fight_mode?: bool
	domains: [...string]
	id?:       string
	mode:      string
	name:      string
	offlabel?: bool
	region?:   string
	secret?:   string
}
