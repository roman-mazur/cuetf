package data

#aws_s3_bucket_objects: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_s3_bucket_objects")
	common_prefixes?: [...string]
	delimiter?:     string
	encoding_type?: string
	fetch_owner?:   bool
	id?:            string
	keys?: [...string]
	max_keys?: number
	owners?: [...string]
	prefix?:      string
	start_after?: string
	bucket:       _
}