package res

#aws_cloudfront_origin_access_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_origin_access_identity")
	caller_reference?:                string
	cloudfront_access_identity_path?: string
	comment?:                         string
	etag?:                            string
	iam_arn?:                         string
	id?:                              string
	s3_canonical_user_id?:            string
}
