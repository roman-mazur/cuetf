package data

#cloudflare_calls_sfu_app: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_calls_sfu_app")
	close({
		account_id!: string
		app_id!:     string
		created?:    string
		modified?:   string
		name?:       string
		uid?:        string
	})
}
