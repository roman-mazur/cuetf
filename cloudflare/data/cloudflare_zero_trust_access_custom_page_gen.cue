package data

#cloudflare_zero_trust_access_custom_page: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_access_custom_page")
	close({
		account_id!:     string
		app_count?:      number
		created_at?:     string
		custom_html?:    string
		custom_page_id?: string
		id?:             string
		name?:           string
		type?:           string
		uid?:            string
		updated_at?:     string
	})
}
