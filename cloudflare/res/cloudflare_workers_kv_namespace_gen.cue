package res

#cloudflare_workers_kv_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_workers_kv_namespace")
	account_id: string
	id?:        string
	title:      string
}
