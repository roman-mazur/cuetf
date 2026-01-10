package data

#aws_s3_account_public_access_block: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_s3_account_public_access_block")
	close({
		account_id?:              string
		block_public_acls?:       bool
		block_public_policy?:     bool
		id?:                      string
		ignore_public_acls?:      bool
		restrict_public_buckets?: bool
	})
}
