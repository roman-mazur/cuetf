package data

#aws_s3control_multi_region_access_points: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3control_multi_region_access_points")
	close({
		access_points?: [...close({
			alias?:      string
			created_at?: string
			name?:       string
			public_access_block?: [...close({
				block_public_acls?:       bool
				block_public_policy?:     bool
				ignore_public_acls?:      bool
				restrict_public_buckets?: bool
			})]
			regions?: [...close({
				bucket?:            string
				bucket_account_id?: string
				region?:            string
			})]
			status?: string
		})]
		account_id?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
