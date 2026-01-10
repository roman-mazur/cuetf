package data

#aws_cloudfront_origin_access_identities: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_cloudfront_origin_access_identities")
	close({
		comments?: [...string]
		iam_arns?: [...string]
		id?: string
		ids?: [...string]
		s3_canonical_user_ids?: [...string]
	})
}
