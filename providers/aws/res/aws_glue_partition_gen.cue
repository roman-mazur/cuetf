package res

import "list"

#aws_glue_partition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_glue_partition")
	close({
		storage_descriptor?: matchN(1, [#storage_descriptor, list.MaxItems(1) & [...#storage_descriptor]])
		catalog_id?:         string
		creation_time?:      string
		database_name!:      string
		id?:                 string
		last_accessed_time?: string
		last_analyzed_time?: string
		parameters?: [string]: string
		partition_values!: [...string]

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		table_name!: string
	})

	#storage_descriptor: close({
		columns?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/columns", [..._#defs."/$defs/storage_descriptor/$defs/columns"]])
		ser_de_info?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/ser_de_info", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/ser_de_info"]])
		skewed_info?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/skewed_info", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/skewed_info"]])
		sort_columns?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/sort_columns", [..._#defs."/$defs/storage_descriptor/$defs/sort_columns"]])
		additional_locations?: [...string]
		bucket_columns?: [...string]
		compressed?:        bool
		input_format?:      string
		location?:          string
		number_of_buckets?: number
		output_format?:     string
		parameters?: [string]: string
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
