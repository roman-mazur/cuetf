package data

#cloudflare_custom_pages_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_custom_pages_list")
	close({
		account_id?: string
		max_items?:  number
		result?: matchN(1, [close({
			created_on?:     string
			description?:    string
			id?:             string
			modified_on?:    string
			preview_target?: string
			required_tokens?: [...string]
			state?: string
			url?:   string
		}), [...close({
			created_on?:     string
			description?:    string
			id?:             string
			modified_on?:    string
			preview_target?: string
			required_tokens?: [...string]
			state?: string
			url?:   string
		})]])
		zone_id?: string
	})
}
