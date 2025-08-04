package data

#cloudflare_zero_trust_dex_test: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_dex_test")
	close({
		account_id!:  string
		description?: string
		dex_test_id?: string
		data?: close({
			host?:   string
			kind?:   string
			method?: string
		})
		enabled?:  bool
		id?:       string
		interval?: string
		name?:     string
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
