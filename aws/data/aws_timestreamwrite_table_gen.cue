package data

#aws_timestreamwrite_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_timestreamwrite_table")
	close({
		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:            string
		arn?:               string
		creation_time?:     string
		database_name!:     string
		last_updated_time?: string
		magnetic_store_write_properties?: [...close({
			enable_magnetic_store_writes?: bool
			magnetic_store_rejected_data_location?: [...close({
				s3_configuration?: [...close({
					bucket_name?:       string
					encryption_option?: string
					kms_key_id?:        string
					object_key_prefix?: string
				})]
			})]
		})]
		name!: string
		retention_properties?: [...close({
			magnetic_store_retention_period_in_days?: number
			memory_store_retention_period_in_hours?:  number
		})]
		schema?: [...close({
			composite_partition_key?: [...close({
				enforcement_in_record?: string
				name?:                  string
				type?:                  string
			})]
		})]
		table_status?: string
	})
}
