package res

import "list"

#aws_timestreamwrite_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_timestreamwrite_table")
	close({
		arn?:           string
		database_name!: string
		id?:            string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		table_name!: string
		magnetic_store_write_properties?: matchN(1, [#magnetic_store_write_properties, list.MaxItems(1) & [...#magnetic_store_write_properties]])
		tags?: [string]:     string
		tags_all?: [string]: string
		retention_properties?: matchN(1, [#retention_properties, list.MaxItems(1) & [...#retention_properties]])
		schema?: matchN(1, [#schema, list.MaxItems(1) & [...#schema]])
	})

	#magnetic_store_write_properties: close({
		magnetic_store_rejected_data_location?: matchN(1, [_#defs."/$defs/magnetic_store_write_properties/$defs/magnetic_store_rejected_data_location", list.MaxItems(1) & [..._#defs."/$defs/magnetic_store_write_properties/$defs/magnetic_store_rejected_data_location"]])
		enable_magnetic_store_writes?: bool
	})

	#retention_properties: close({
		magnetic_store_retention_period_in_days!: number
		memory_store_retention_period_in_hours!:  number
	})

	#schema: close({
		composite_partition_key?: matchN(1, [_#defs."/$defs/schema/$defs/composite_partition_key", list.MaxItems(1) & [..._#defs."/$defs/schema/$defs/composite_partition_key"]])
	})

	_#defs: "/$defs/magnetic_store_write_properties/$defs/magnetic_store_rejected_data_location": close({
		s3_configuration?: matchN(1, [_#defs."/$defs/magnetic_store_write_properties/$defs/magnetic_store_rejected_data_location/$defs/s3_configuration", list.MaxItems(1) & [..._#defs."/$defs/magnetic_store_write_properties/$defs/magnetic_store_rejected_data_location/$defs/s3_configuration"]])
	})

	_#defs: "/$defs/magnetic_store_write_properties/$defs/magnetic_store_rejected_data_location/$defs/s3_configuration": close({
		bucket_name?:       string
		encryption_option?: string
		kms_key_id?:        string
		object_key_prefix?: string
	})

	_#defs: "/$defs/schema/$defs/composite_partition_key": close({
		enforcement_in_record?: string
		name?:                  string
		type!:                  string
	})
}
