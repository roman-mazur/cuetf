package data

#cloudflare_r2_bucket_sippy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket_sippy")
	close({
		// Account ID.
		account_id!: string

		// Name of the bucket.
		bucket_name!: string

		// Details about the configured destination bucket.
		destination?: close({
			// ID of the Cloudflare API token used when writing objects to
			// this
			// bucket.
			access_key_id?: string
			account?:       string

			// Name of the bucket on the provider.
			bucket?: string

			// Available values: "r2".
			provider?: string
		})

		// State of Sippy for this bucket.
		enabled?: bool

		// Details about the configured source bucket.
		source?: close({
			// Name of the bucket on the provider.
			bucket?: string

			// Available values: "aws", "gcs".
			provider?: string

			// Region where the bucket resides (AWS only).
			region?: string
		})
	})
}
