package data

#cloudflare_turnstile_widgets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_turnstile_widgets")
	close({
		account_id!: string
		direction?:  string
		max_items?:  number
		order?:      string
		result?: matchN(1, [close({
			bot_fight_mode?:  bool
			clearance_level?: string
			created_on?:      string
			domains?: [...string]
			ephemeral_id?: bool
			mode?:         string
			modified_on?:  string
			name?:         string
			offlabel?:     bool
			region?:       string
			sitekey?:      string
		}), [...close({
			bot_fight_mode?:  bool
			clearance_level?: string
			created_on?:      string
			domains?: [...string]
			ephemeral_id?: bool
			mode?:         string
			modified_on?:  string
			name?:         string
			offlabel?:     bool
			region?:       string
			sitekey?:      string
		})]])
	})
}
