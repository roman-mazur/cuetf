package res

#cloudflare_cloudforce_one_request: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_cloudforce_one_request")
	close({
		account_id!:     string
		completed?:      string
		content?:        string
		created?:        string
		id?:             string
		message_tokens?: number
		priority?:       string
		readable_id?:    string
		request?:        string
		request_type?:   string
		status?:         string
		summary?:        string
		tlp?:            string
		tokens?:         number
		updated?:        string
	})
}
