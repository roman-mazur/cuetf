package res

#cloudflare_r2_bucket_sippy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_r2_bucket_sippy")
	close({
		// Account ID.
		account_id!: string

		// Name of the bucket.
		bucket_name!: string

		// R2 bucket to copy objects to.
		destination?: close({
			// ID of a Cloudflare API token.
			// This is the value labelled "Access Key ID" when creating an
			// API.
			// token from the [R2
			// dashboard](https://dash.cloudflare.com/?to=/:account/r2/api-tokens).
			//
			// Sippy will use this token when writing objects to R2, so it is
			// best to scope this token to the bucket you're enabling Sippy
			// for.
			access_key_id?: string

			// Available values: "r2".
			cloud_provider?: string

			// Value of a Cloudflare API token.
			// This is the value labelled "Secret Access Key" when creating an
			// API.
			// token from the [R2
			// dashboard](https://dash.cloudflare.com/?to=/:account/r2/api-tokens).
			//
			// Sippy will use this token when writing objects to R2, so it is
			// best to scope this token to the bucket you're enabling Sippy
			// for.
			secret_access_key?: string
		})

		// State of Sippy for this bucket.
		enabled?: bool

		// AWS S3 bucket to copy objects from.
		source?: close({
			// Access Key ID of an IAM credential (ideally scoped to a single
			// S3 bucket).
			access_key_id?: string

			// Name of the AWS S3 bucket.
			bucket?: string

			// URL to the S3-compatible API of the bucket.
			bucket_url?: string

			// Client email of an IAM credential (ideally scoped to a single
			// GCS bucket).
			client_email?: string

			// Available values: "aws", "gcs", "s3".
			cloud_provider?: string

			// Private Key of an IAM credential (ideally scoped to a single
			// GCS bucket).
			private_key?: string

			// Name of the AWS availability zone.
			region?: string

			// Secret Access Key of an IAM credential (ideally scoped to a
			// single S3 bucket).
			secret_access_key?: string
		})

		// Jurisdiction of the bucket
		jurisdiction?: string
	})
}
