package res

#cloudflare_r2_bucket_sippy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket_sippy")
	close({
		account_id!: string
		destination?: close({
			access_key_id?:     string
			cloud_provider?:    string
			secret_access_key?: string
		})
		bucket_name!: string
		enabled?:     bool
		source?: close({
			access_key_id?:     string
			bucket?:            string
			client_email?:      string
			cloud_provider?:    string
			private_key?:       string
			region?:            string
			secret_access_key?: string
		})
		jurisdiction?: string
	})
}
