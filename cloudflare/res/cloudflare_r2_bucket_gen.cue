package res

#cloudflare_r2_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_r2_bucket")
	account_id!: string
	id?:         string
	location?:   string
	name!:       string
}
