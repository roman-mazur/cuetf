package res

#cloudflare_d1_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_d1_database")
	account_id!: string
	id?:         string
	name!:       string
	version?:    string
}
