package data

#cloudflare_email_routing_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_email_routing_address")
	close({
		account_id!:                     string
		created?:                        string
		destination_address_identifier?: string
		email?:                          string
		filter?: close({
			direction?: string
			verified?:  bool
		})
		id?:       string
		modified?: string
		verified?: string
	})
}
