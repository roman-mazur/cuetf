package data

#aws_s3_directory_buckets: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_directory_buckets")
	arns?: [...string]
	buckets?: [...string]
	id?: string
}
