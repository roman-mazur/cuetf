package res

#cloudflare_workers_kv_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_kv_namespace")
	close({
		account_id!:            string
		beta?:                  bool
		id?:                    string
		supports_url_encoding?: bool
		title!:                 string
	})
}
