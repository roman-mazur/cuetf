package res

#aws_s3_bucket_public_access_block: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_public_access_block")
	block_public_acls?:       bool
	block_public_policy?:     bool
	bucket!:                  string
	id?:                      string
	ignore_public_acls?:      bool
	restrict_public_buckets?: bool
}
