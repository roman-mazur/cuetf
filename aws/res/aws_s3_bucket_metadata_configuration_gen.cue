package res

#aws_s3_bucket_metadata_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_s3_bucket_metadata_configuration")
	close({
		metadata_configuration?: matchN(1, [#metadata_configuration, [...#metadata_configuration]])
		timeouts?:              #timeouts
		bucket!:                string
		expected_bucket_owner?: string
		region?:                string
	})

	#metadata_configuration: close({
		inventory_table_configuration?: matchN(1, [_#defs."/$defs/metadata_configuration/$defs/inventory_table_configuration", [..._#defs."/$defs/metadata_configuration/$defs/inventory_table_configuration"]])
		journal_table_configuration?: matchN(1, [_#defs."/$defs/metadata_configuration/$defs/journal_table_configuration", [..._#defs."/$defs/metadata_configuration/$defs/journal_table_configuration"]])
		destination?: [...close({
			table_bucket_arn?:  string
			table_bucket_type?: string
			table_namespace?:   string
		})]
	})

	#timeouts: close({
		create?: string
	})

	_#defs: "/$defs/metadata_configuration/$defs/inventory_table_configuration": close({
		encryption_configuration?: matchN(1, [_#defs."/$defs/metadata_configuration/$defs/inventory_table_configuration/$defs/encryption_configuration", [..._#defs."/$defs/metadata_configuration/$defs/inventory_table_configuration/$defs/encryption_configuration"]])
		configuration_state!: string
		table_arn?:           string
		table_name?:          string
	})

	_#defs: "/$defs/metadata_configuration/$defs/inventory_table_configuration/$defs/encryption_configuration": close({
		kms_key_arn?:   string
		sse_algorithm!: string
	})

	_#defs: "/$defs/metadata_configuration/$defs/journal_table_configuration": close({
		encryption_configuration?: matchN(1, [_#defs."/$defs/metadata_configuration/$defs/journal_table_configuration/$defs/encryption_configuration", [..._#defs."/$defs/metadata_configuration/$defs/journal_table_configuration/$defs/encryption_configuration"]])
		record_expiration?: matchN(1, [_#defs."/$defs/metadata_configuration/$defs/journal_table_configuration/$defs/record_expiration", [..._#defs."/$defs/metadata_configuration/$defs/journal_table_configuration/$defs/record_expiration"]])
		table_arn?:  string
		table_name?: string
	})

	_#defs: "/$defs/metadata_configuration/$defs/journal_table_configuration/$defs/encryption_configuration": close({
		kms_key_arn?:   string
		sse_algorithm!: string
	})

	_#defs: "/$defs/metadata_configuration/$defs/journal_table_configuration/$defs/record_expiration": close({
		days?:       number
		expiration!: string
	})
}
