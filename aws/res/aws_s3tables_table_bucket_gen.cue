package res

#aws_s3tables_table_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3tables_table_bucket")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		created_at?: string
		encryption_configuration?: close({
			kms_key_arn?:   string
			sse_algorithm?: string
		})
		force_destroy?: bool
		maintenance_configuration?: close({
			iceberg_unreferenced_file_removal?: close({
				settings?: close({
					non_current_days?:  number
					unreferenced_days?: number
				})
				status?: string
			})
		})
		name!:             string
		owner_account_id?: string
	})
}
