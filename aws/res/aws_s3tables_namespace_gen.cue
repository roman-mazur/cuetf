package res

#aws_s3tables_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3tables_namespace")
	close({
		created_at?:       string
		created_by?:       string
		namespace!:        string
		owner_account_id?: string
		region?:           string
		table_bucket_arn!: string
	})
}
