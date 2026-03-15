package res

import "list"

#aws_glue_catalog_table: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_glue_catalog_table")
	close({
		open_table_format_input?: matchN(1, [#open_table_format_input, list.MaxItems(1) & [...#open_table_format_input]])
		partition_index?: matchN(1, [#partition_index, list.MaxItems(3) & [...#partition_index]])
		partition_keys?: matchN(1, [#partition_keys, [...#partition_keys]])
		storage_descriptor?: matchN(1, [#storage_descriptor, list.MaxItems(1) & [...#storage_descriptor]])
		target_table?: matchN(1, [#target_table, list.MaxItems(1) & [...#target_table]])
		view_definition?: matchN(1, [#view_definition, list.MaxItems(1) & [...#view_definition]])
		arn?:           string
		catalog_id?:    string
		database_name!: string
		description?:   string
		id?:            string
		name!:          string
		owner?:         string
		parameters?: [string]: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		retention?:          number
		table_type?:         string
		view_expanded_text?: string
		view_original_text?: string
	})

	#open_table_format_input: close({
		iceberg_input!: matchN(1, [_#defs."/$defs/open_table_format_input/$defs/iceberg_input", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/open_table_format_input/$defs/iceberg_input"]])
	})

	#partition_index: close({
		index_name!:   string
		index_status?: string
		keys!: [...string]
	})

	#partition_keys: close({
		comment?: string
		name!:    string
		parameters?: [string]: string
		type?: string
	})

	#storage_descriptor: close({
		columns?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/columns", [..._#defs."/$defs/storage_descriptor/$defs/columns"]])
		schema_reference?: matchN(1, [_#defs."/$defs/storage_descriptor/$defs/schema_reference", list.MaxItems(1) & [..._#defs."/$defs/storage_descriptor/$defs/schema_reference"]])
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

	#target_table: close({
		catalog_id!:    string
		database_name!: string
		name!:          string
		region?:        string
	})

	#view_definition: close({
		representations?: matchN(1, [_#defs."/$defs/view_definition/$defs/representations", [..._#defs."/$defs/view_definition/$defs/representations"]])
		definer?:           string
		is_protected?:      bool
		last_refresh_type?: string
		refresh_seconds?:   number
		sub_object_version_ids?: [...number]
		sub_objects?: [...string]
		view_version_id?:    number
		view_version_token?: string
	})

	_#defs: "/$defs/open_table_format_input/$defs/iceberg_input": close({
		iceberg_table_input?: matchN(1, [_#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input", list.MaxItems(1) & [..._#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input"]])
		metadata_operation!: string
		version?:            string
	})

	_#defs: "/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input": close({
		partition_spec?: matchN(1, [_#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/partition_spec", list.MaxItems(1) & [..._#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/partition_spec"]])
		schema!: matchN(1, [_#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/schema", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/schema"]])
		sort_order?: matchN(1, [_#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/sort_order", list.MaxItems(1) & [..._#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/sort_order"]])
		location!: string
		properties?: [string]: string
	})

	_#defs: "/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/partition_spec": close({
		fields!: matchN(1, [_#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/partition_spec/$defs/fields", [_, ...] & [..._#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/partition_spec/$defs/fields"]])
		spec_id?: number
	})

	_#defs: "/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/partition_spec/$defs/fields": close({
		field_id?:  number
		name!:      string
		source_id!: number
		transform!: string
	})

	_#defs: "/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/schema": close({
		fields!: matchN(1, [_#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/schema/$defs/fields", [_, ...] & [..._#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/schema/$defs/fields"]])
		identifier_field_ids?: [...number]
		schema_id?: number
		type?:      string
	})

	_#defs: "/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/schema/$defs/fields": close({
		doc?:             string
		id!:              number
		initial_default?: string
		name!:            string
		required!:        bool
		type!:            string
		write_default?:   string
	})

	_#defs: "/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/sort_order": close({
		fields!: matchN(1, [_#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/sort_order/$defs/fields", [_, ...] & [..._#defs."/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/sort_order/$defs/fields"]])
		order_id!: number
	})

	_#defs: "/$defs/open_table_format_input/$defs/iceberg_input/$defs/iceberg_table_input/$defs/sort_order/$defs/fields": close({
		direction!:  string
		null_order!: string
		source_id!:  number
		transform!:  string
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

	_#defs: "/$defs/view_definition/$defs/representations": close({
		dialect?:               string
		dialect_version?:       string
		validation_connection?: string
		view_expanded_text?:    string
		view_original_text?:    string
	})
}
