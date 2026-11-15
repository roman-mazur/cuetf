package res

cloudflare_r2_bucket_sippy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_r2_bucket_sippy")
	close({
		// Cloudflare account ID that owns the R2 resource.
		account_id!: string

		// Name of the bucket.
		bucket_name!: string

		// R2 bucket to copy objects to.
		destination?: close({
			// ID of a Cloudflare API token.
			// This is the value labelled "Access Key ID" when creating an API.
			// token from the [R2 dashboard](https://dash.cloudflare.com/?to=/:account/r2/api-tokens).
			//
			// Sippy will use this token when writing objects to R2, so it is
			// best to scope this token to the bucket you're enabling Sippy for.
			access_key_id?: string

			// Available values: "r2".
			cloud_provider?: string

			// Value of a Cloudflare API token.
			// This is the value labelled "Secret Access Key" when creating an API.
			// token from the [R2 dashboard](https://dash.cloudflare.com/?to=/:account/r2/api-tokens).
			//
			// Sippy will use this token when writing objects to R2, so it is
			// best to scope this token to the bucket you're enabling Sippy for.
			secret_access_key?: string
		})

		// State of Sippy for this bucket.
		enabled?: bool

		// Jurisdiction of the bucket
		jurisdiction?: string

		// AWS S3 bucket to copy objects from.
		//
		// GCS bucket to copy objects from.
		//
		// General S3-compatible provider to copy objects from.
		//
		// Azure Blob Storage container to copy objects from.
		source?: close({
			// For `r2_bucket_sippy_provider: aws` or `r2_bucket_sippy_provider: s3`: Access
			// Key ID of an IAM credential (ideally scoped to a single S3 bucket).
			access_key_id?: string

			// For `r2_bucket_sippy_provider: azure`: Access key for the Azure Storage
			// account. Mutually exclusive with sasToken.
			account_key?: string

			// For `r2_bucket_sippy_provider: azure`: Name of the Azure Storage account.
			account_name?: string

			// For `r2_bucket_sippy_provider: aws`: Name of the AWS S3 bucket.
			//
			// For `r2_bucket_sippy_provider: gcs`: Name of the GCS bucket.
			bucket?: string

			// For `r2_bucket_sippy_provider: s3`: URL to the S3-compatible API of the bucket.
			bucket_url?: string

			// For `r2_bucket_sippy_provider: gcs`: Client email of an IAM credential
			// (ideally scoped to a single GCS bucket).
			client_email?: string

			// Available values: "aws", "gcs", "s3", "azure".
			cloud_provider?: string

			// For `r2_bucket_sippy_provider: azure`: Name of the Azure Blob Storage container.
			container?: string

			// For `r2_bucket_sippy_provider: gcs`: Private Key of an IAM credential
			// (ideally scoped to a single GCS bucket).
			private_key?: string

			// For `r2_bucket_sippy_provider: aws`: AWS region containing the source S3 bucket.
			region?: string

			// For `r2_bucket_sippy_provider: azure`: Shared Access Signature token for the
			// Azure Storage account. Mutually exclusive with accountKey.
			sas_token?: string

			// For `r2_bucket_sippy_provider: aws` or `r2_bucket_sippy_provider: s3`: Secret
			// Access Key of an IAM credential (ideally scoped to a single S3 bucket).
			secret_access_key?: string
		})
	})
}
