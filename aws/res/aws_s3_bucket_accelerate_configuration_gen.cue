package res

#aws_s3_bucket_accelerate_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_accelerate_configuration")
	close({
		bucket!:                string
		expected_bucket_owner?: string
		id?:                    string
		region?:                string
		status!:                string
	})
}
