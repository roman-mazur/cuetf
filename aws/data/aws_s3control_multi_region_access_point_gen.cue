package data

#aws_s3control_multi_region_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3control_multi_region_access_point")
	close({
		account_id?:  string
		alias?:       string
		arn?:         string
		created_at?:  string
		domain_name?: string
		id?:          string
		name!:        string
		public_access_block?: [...close({
			block_public_acls?:       bool
			block_public_policy?:     bool
			ignore_public_acls?:      bool
			restrict_public_buckets?: bool
		})]
		region?: string
		regions?: [...close({
			bucket?:            string
			bucket_account_id?: string
			region?:            string
		})]
		status?: string
	})
}
