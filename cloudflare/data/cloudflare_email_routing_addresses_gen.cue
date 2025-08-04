package data

#cloudflare_email_routing_addresses: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_addresses")
	close({
		account_id!: string
		direction?:  string
		max_items?:  number
		result?: matchN(1, [close({
			created?:  string
			email?:    string
			id?:       string
			modified?: string
			verified?: string
		}), [...close({
			created?:  string
			email?:    string
			id?:       string
			modified?: string
			verified?: string
		})]])
		verified?: bool
	})
}
