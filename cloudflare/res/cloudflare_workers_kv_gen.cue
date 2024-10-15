package res

#cloudflare_workers_kv: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_kv")
	account_id!:   string
	id?:           string
	key!:          string
	namespace_id!: string
	value!:        string
}
