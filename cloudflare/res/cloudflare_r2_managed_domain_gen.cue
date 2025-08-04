package res

#cloudflare_r2_managed_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_managed_domain")
	close({
		// Account ID.
		account_id!: string

		// Bucket ID.
		bucket_id?: string

		// Name of the bucket.
		bucket_name!: string

		// Domain name of the bucket's r2.dev domain.
		domain?: string

		// Whether to enable public bucket access at the r2.dev domain.
		enabled!: bool

		// Jurisdiction of the bucket
		jurisdiction?: string
	})
}
