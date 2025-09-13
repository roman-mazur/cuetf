package data

#aws_s3_access_point: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_access_point")
	close({
		account_id?: string
		alias?:      string
		arn?:        string
		bucket?:     string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		bucket_account_id?: string
		data_source_id?:    string
		data_source_type?:  string
		endpoints?: [string]: string
		name!:           string
		network_origin?: string
		public_access_block_configuration?: [...close({
			block_public_acls?:       bool
			block_public_policy?:     bool
			ignore_public_acls?:      bool
			restrict_public_buckets?: bool
		})]
		tags?: [string]: string
		vpc_configuration?: [...close({
			vpc_id?: string
		})]
	})
}
