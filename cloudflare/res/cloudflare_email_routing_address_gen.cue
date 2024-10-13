package res

#cloudflare_email_routing_address: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_email_routing_address")
	account_id!: string
	created?:    string
	email!:      string
	id?:         string
	modified?:   string
	tag?:        string
	verified?:   string
}
