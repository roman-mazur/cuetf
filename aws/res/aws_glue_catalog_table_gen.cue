package res

import "list"

#aws_glue_catalog_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_glue_catalog_table")
	close({
		arn?:           string
		catalog_id?:    string
		database_name!: string
		description?:   string
		id?:            string
		name!:          string
		owner?:         string
		parameters?: [string]: string
		region?:    string
		retention?: number
		open_table_format_input?: matchN(1, [#open_table_format_input, list.MaxItems(1) & [...#open_table_format_input]])
		partition_index?: matchN(1, [#partition_index, list.MaxItems(3) & [...#partition_index]])
		table_type?:         string
		view_expanded_text?: string
		view_original_text?: string
		partition_keys?: matchN(1, [#partition_keys, [...#partition_keys]])
		storage_descriptor?: matchN(1, [#storage_descriptor, list.MaxItems(1) & [...#storage_descriptor]])
		target_table?: matchN(1, [#target_table, list.MaxItems(1) & [...#target_table]])
	})

	#open_table_format_input: close({
		iceberg_input?: matchN(1, [_#defs."/$defs/open_table_format_input/$defs/iceberg_input", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/open_table_format_input/$defs/iceberg_input"]])
	})

	#partition_index: close({
		index_name!:   string
		index_status?: string
		keys!: [...string]
	})

	#partition_keys: close({
		comment?: string
		name!:    string
		type?:    string
	})

	#storage_descriptor: close({
		additional_locations?: [...string]
		bucket_columns?: [...string]
		compressed?:   bool
		input_format?: string
		location?:     string
		columns?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/columns", [..._#defs."/$defs/storage_descriptor/$defs/columns"]])
		number_of_buckets?: number
		output_format?:     string
		schema_reference?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/schema_reference", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/schema_reference"]])
		ser_de_info?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/ser_de_info", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/ser_de_info"]])
		parameters?: [string]: string
		skewed_info?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/skewed_info", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/skewed_info"]])
		sort_columns?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/sort_columns", [..._#defs."/$defs/storage_descriptor/$defs/sort_columns"]])
		stored_as_sub_directories?: bool
	})

	#target_table: close({
		catalog_id!:    string
		database_name!: string
		name!:          string
		region?:        string
	})

	_#defs: "/$defs/open_table_format_input/$defs/iceberg_input": close({
		metadata_operation!: string
		version?:            string
	})

	_#defs: "/$defs/storage_descriptor/$defs/columns": close({
		comment?: string
		name!:    string
		parameters?: [string]: string
		type?: string
	})

	_#defs: "/$defs/storage_descriptor/$defs/schema_reference": close({
		schema_id?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/schema_reference/$defs/schema_id", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/schema_reference/$defs/schema_id"]])
		schema_version_id?:     string
		schema_version_number!: number
	})

	_#defs: "/$defs/storage_descriptor/$defs/schema_reference/$defs/schema_id": close({
		registry_name?: string
		schema_arn?:    string
		schema_name?:   string
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
