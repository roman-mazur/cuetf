package res

#cloudflare_workers_for_platforms_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_workers_for_platforms_namespace")
	account_id!: string
	id?:         string
	name!:       string
}
