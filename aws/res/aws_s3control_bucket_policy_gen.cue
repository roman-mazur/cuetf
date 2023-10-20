package res

#aws_s3control_bucket_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3control_bucket_policy")
	bucket: string
	id?:    string
	policy: string
}
