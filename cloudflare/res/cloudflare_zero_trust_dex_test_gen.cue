package res

#cloudflare_zero_trust_dex_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dex_test")
	close({
		account_id!:  string
		description?: string
		enabled!:     bool
		data!: close({
			host?:   string
			kind?:   string
			method?: string
		})
		id?:       string
		interval!: string
		name!:     string
		targeted?: bool
		test_id?:  string
		target_policies?: matchN(1, [close({
			default?: bool
			id?:      string
			name?:    string
		}), [...close({
			default?: bool
			id?:      string
			name?:    string
		})]])
	})
}
