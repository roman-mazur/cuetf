package data

#cloudflare_cloudforce_one_requests: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_cloudforce_one_requests")
	close({
		account_id!:       string
		completed_after?:  string
		completed_before?: string
		created_after?:    string
		created_before?:   string
		result?: matchN(1, [close({
			completed?:      string
			created?:        string
			id?:             string
			message_tokens?: number
			priority?:       string
			readable_id?:    string
			request?:        string
			status?:         string
			summary?:        string
			tlp?:            string
			tokens?:         number
			updated?:        string
		}), [...close({
			completed?:      string
			created?:        string
			id?:             string
			message_tokens?: number
			priority?:       string
			readable_id?:    string
			request?:        string
			status?:         string
			summary?:        string
			tlp?:            string
			tokens?:         number
			updated?:        string
		})]])
		max_items?:    number
		page!:         number
		per_page!:     number
		request_type?: string
		sort_by?:      string
		sort_order?:   string
		status?:       string
	})
}
