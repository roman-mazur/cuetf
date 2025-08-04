package res

import "list"

#aws_glue_partition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_partition")
	close({
		catalog_id?:    string
		creation_time?: string
		database_name!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		id?:                 string
		last_accessed_time?: string
		last_analyzed_time?: string
		storage_descriptor?: matchN(1, [#storage_descriptor, list.MaxItems(1) & [...#storage_descriptor]])
		parameters?: [string]: string
		partition_values!: [...string]
		table_name!: string
	})

	#storage_descriptor: close({
		additional_locations?: [...string]
		bucket_columns?: [...string]
		compressed?:   bool
		input_format?: string
		location?:     string
		columns?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/columns", [..._#defs."/$defs/storage_descriptor/$defs/columns"]])
		number_of_buckets?: number
		ser_de_info?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/ser_de_info", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/ser_de_info"]])
		output_format?: string
		parameters?: [string]: string
		skewed_info?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/skewed_info", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/skewed_info"]])
		sort_columns?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/sort_columns", [..._#defs."/$defs/storage_descriptor/$defs/sort_columns"]])
		stored_as_sub_directories?: bool
	})

	_#defs: "/$defs/storage_descriptor/$defs/columns": close({
		comment?: string
		name!:    string
		type?:    string
	})

	_#defs: "/$defs/storage_descriptor/$defs/ser_de_info": close({
		name?: string
		parameters?: [string]: string
		serialization_library?: string
	})

	_#defs: "/$defs/storage_descriptor/$defs/skewed_info": close({
		skewed_column_names?: [...string]
		skewed_column_value_location_maps?: [string]: string
		skewed_column_values?: [...string]
	})

	_#defs: "/$defs/storage_descriptor/$defs/sort_columns": close({
		column!:     string
		sort_order!: number
	})
}
