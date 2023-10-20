package res

#aws_s3_bucket_request_payment_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_bucket_request_payment_configuration")
	bucket:                 string
	expected_bucket_owner?: string
	id?:                    string
	payer:                  string
}
