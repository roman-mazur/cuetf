package res

#cloudflare_workers_secret: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_workers_secret")
	account_id!:  string
	id?:          string
	name!:        string
	script_name!: string
	secret_text!: string
}
