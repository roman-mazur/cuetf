package res

#aws_s3_bucket_public_access_block: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_public_access_block")
	close({
		block_public_acls?:   bool
		block_public_policy?: bool
		bucket!:              string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                  string
		id?:                      string
		ignore_public_acls?:      bool
		restrict_public_buckets?: bool
		skip_destroy?:            bool
	})
}
