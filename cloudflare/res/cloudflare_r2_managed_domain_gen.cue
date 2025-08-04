package res

#cloudflare_r2_managed_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_managed_domain")
	close({
		account_id!:   string
		bucket_id?:    string
		bucket_name!:  string
		domain?:       string
		enabled!:      bool
		jurisdiction?: string
	})
}
