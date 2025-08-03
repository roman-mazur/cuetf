package res

#aws_s3tables_table_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3tables_table_policy")
	close({
		name!:             string
		namespace!:        string
		region?:           string
		resource_policy!:  string
		table_bucket_arn!: string
	})
}
