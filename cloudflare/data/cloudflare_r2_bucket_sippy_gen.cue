package data

#cloudflare_r2_bucket_sippy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket_sippy")
	close({
		account_id!:  string
		bucket_name!: string
		destination?: close({
			access_key_id?: string
			account?:       string
			bucket?:        string
			provider?:      string
		})
		enabled?: bool
		source?: close({
			bucket?:   string
			provider?: string
			region?:   string
		})
	})
}
