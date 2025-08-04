package data

#cloudflare_cloudforce_one_request_message: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_cloudforce_one_request_message")
	close({
		account_id!:           string
		after?:                string
		author?:               string
		before?:               string
		content?:              string
		created?:              string
		id?:                   number
		is_follow_on_request?: bool
		page!:                 number
		per_page!:             number
		request_id!:           string
		sort_by?:              string
		sort_order?:           string
		updated?:              string
	})
}
