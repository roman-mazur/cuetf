package data

#cloudflare_workers_kv_namespaces: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_kv_namespaces")
	close({
		account_id!: string
		direction?:  string
		max_items?:  number
		order?:      string
		result?: matchN(1, [close({
			beta?:                  bool
			id?:                    string
			supports_url_encoding?: bool
			title?:                 string
		}), [...close({
			beta?:                  bool
			id?:                    string
			supports_url_encoding?: bool
			title?:                 string
		})]])
	})
}
