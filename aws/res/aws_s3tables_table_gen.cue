package res

#aws_s3tables_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3tables_table")
	close({
		arn?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		created_at?: string
		created_by?: string
		encryption_configuration?: close({
			kms_key_arn?:   string
			sse_algorithm?: string
		})
		format!: string
		maintenance_configuration?: close({
			iceberg_compaction?: close({
				settings?: close({
					target_file_size_mb?: number
				})
				status?: string
			})
			iceberg_snapshot_management?: close({
				settings?: close({
					max_snapshot_age_hours?: number
					min_snapshots_to_keep?:  number
				})
				status?: string
			})
		})
		metadata_location?: string
		modified_at?:       string
		modified_by?:       string
		metadata?: matchN(1, [#metadata, [...#metadata]])
		name!:             string
		namespace!:        string
		owner_account_id?: string
		table_bucket_arn!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		type?:               string
		version_token?:      string
		warehouse_location?: string
	})

	#metadata: close({
		iceberg?: matchN(1, [_#defs."/$defs/metadata/$defs/iceberg", [..._#defs."/$defs/metadata/$defs/iceberg"]])
	})

	_#defs: "/$defs/metadata/$defs/iceberg": close({
		schema?: matchN(1, [_#defs."/$defs/metadata/$defs/iceberg/$defs/schema", [..._#defs."/$defs/metadata/$defs/iceberg/$defs/schema"]])
	})

	_#defs: "/$defs/metadata/$defs/iceberg/$defs/schema": close({
		field?: matchN(1, [_#defs."/$defs/metadata/$defs/iceberg/$defs/schema/$defs/field", [..._#defs."/$defs/metadata/$defs/iceberg/$defs/schema/$defs/field"]])
	})

	_#defs: "/$defs/metadata/$defs/iceberg/$defs/schema/$defs/field": close({
		// The name of the field.
		name!: string

		// A Boolean value that specifies whether values are required for
		// each row in this field. Default: false.
		required?: bool

		// The field type. S3 Tables supports all Apache Iceberg primitive
		// types.
		type!: string
	})
}
