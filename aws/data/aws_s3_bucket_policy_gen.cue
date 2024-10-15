package data

#aws_s3_bucket_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_policy")
	bucket!: string
	id?:     string
	policy?: string
}
