package data

#cloudflare_calls_turn_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_calls_turn_app")
	close({
		account_id!: string
		created?:    string
		key_id!:     string
		modified?:   string
		name?:       string
		uid?:        string
	})
}
