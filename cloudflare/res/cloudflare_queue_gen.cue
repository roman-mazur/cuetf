package res

#cloudflare_queue: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_queue")
	account_id!: string
	id?:         string
	name!:       string
}
