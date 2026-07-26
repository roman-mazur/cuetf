package data

aws_s3_buckets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3_buckets")
	close({
		bucket_region?: string
		buckets?: [...close({
			bucket_arn?:    string
			bucket_region?: string
			creation_date?: string
			name?:          string
		})]
		max_buckets?: number
		prefix?:      string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})
}
