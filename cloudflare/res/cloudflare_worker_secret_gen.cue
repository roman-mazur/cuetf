package res

#cloudflare_worker_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_worker_secret")
	account_id!:  string
	id?:          string
	name!:        string
	script_name!: string
	secret_text!: string
}
