package res

import "list"

#aws_quicksight_data_set: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_quicksight_data_set")
	close({
		arn?:            string
		aws_account_id?: string
		data_set_id!:    string
		id?:             string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:      string
		import_mode!: string
		name!:        string
		output_columns?: [...close({
			description?: string
			name?:        string
			type?:        string
		})]
		tags?: [string]: string
		column_groups?: matchN(1, [#column_groups, list.MaxItems(8) & [...#column_groups]])
		column_level_permission_rules?: matchN(1, [#column_level_permission_rules, [...#column_level_permission_rules]])
		tags_all?: [string]: string
		data_set_usage_configuration?: matchN(1, [#data_set_usage_configuration, list.MaxItems(1) & [...#data_set_usage_configuration]])
		field_folders?: matchN(1, [#field_folders, list.MaxItems(1000) & [...#field_folders]])
		logical_table_map?: matchN(1, [#logical_table_map, list.MaxItems(64) & [...#logical_table_map]])
		permissions?: matchN(1, [#permissions, list.MaxItems(64) & [...#permissions]])
		physical_table_map?: matchN(1, [#physical_table_map, list.MaxItems(32) & [...#physical_table_map]])
		refresh_properties?: matchN(1, [#refresh_properties, list.MaxItems(1) & [...#refresh_properties]])
		row_level_permission_data_set?: matchN(1, [#row_level_permission_data_set, list.MaxItems(1) & [...#row_level_permission_data_set]])
		row_level_permission_tag_configuration?: matchN(1, [#row_level_permission_tag_configuration, list.MaxItems(1) & [...#row_level_permission_tag_configuration]])
	})

	#column_groups: close({
		geo_spatial_column_group?: matchN(1, [_#defs."/$defs/column_groups/$defs/geo_spatial_column_group", list.MaxItems(1) & [..._#defs."/$defs/column_groups/$defs/geo_spatial_column_group"]])
	})

	#column_level_permission_rules: close({
		column_names?: [...string]
		principals?: [...string]
	})

	#data_set_usage_configuration: close({
		disable_use_as_direct_query_source?: bool
		disable_use_as_imported_source?:     bool
	})

	#field_folders: close({
		columns?: [...string]
		description?:      string
		field_folders_id!: string
	})

	#logical_table_map: close({
		data_transforms?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms", list.MaxItems(2048) & [..._#defs."/$defs/logical_table_map/$defs/data_transforms"]])
		source?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/source", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/logical_table_map/$defs/source"]])
		alias!:                string
		logical_table_map_id!: string
	})

	#permissions: close({
		actions!: [...string]
		principal!: string
	})

	#physical_table_map: close({
		custom_sql?: matchN(1, [_#defs."/$defs/physical_table_map/$defs/custom_sql", list.MaxItems(1) & [..._#defs."/$defs/physical_table_map/$defs/custom_sql"]])
		relational_table?: matchN(1, [_#defs."/$defs/physical_table_map/$defs/relational_table", list.MaxItems(1) & [..._#defs."/$defs/physical_table_map/$defs/relational_table"]])
		s3_source?: matchN(1, [_#defs."/$defs/physical_table_map/$defs/s3_source", list.MaxItems(1) & [..._#defs."/$defs/physical_table_map/$defs/s3_source"]])
		physical_table_map_id!: string
	})

	#refresh_properties: close({
		refresh_configuration?: matchN(1, [_#defs."/$defs/refresh_properties/$defs/refresh_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/refresh_properties/$defs/refresh_configuration"]])
	})

	#row_level_permission_data_set: close({
		arn!:               string
		format_version?:    string
		namespace?:         string
		permission_policy!: string
		status?:            string
	})

	#row_level_permission_tag_configuration: close({
		tag_rules?: matchN(1, [_#defs."/$defs/row_level_permission_tag_configuration/$defs/tag_rules", list.MaxItems(50) & [_, ...] & [..._#defs."/$defs/row_level_permission_tag_configuration/$defs/tag_rules"]])
		status?: string
	})

	_#defs: "/$defs/column_groups/$defs/geo_spatial_column_group": close({
		columns!: [...string]
		country_code!: string
		name!:         string
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms": close({
		cast_column_type_operation?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/cast_column_type_operation", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/cast_column_type_operation"]])
		create_columns_operation?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/create_columns_operation", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/create_columns_operation"]])
		filter_operation?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/filter_operation", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/filter_operation"]])
		project_operation?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/project_operation", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/project_operation"]])
		rename_column_operation?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/rename_column_operation", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/rename_column_operation"]])
		tag_column_operation?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/tag_column_operation", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/tag_column_operation"]])
		untag_column_operation?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/untag_column_operation", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/untag_column_operation"]])
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms/$defs/cast_column_type_operation": close({
		column_name!:     string
		format?:          string
		new_column_type!: string
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms/$defs/create_columns_operation": close({
		columns?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/create_columns_operation/$defs/columns", list.MaxItems(128) & [_, ...] & [..._#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/create_columns_operation/$defs/columns"]])
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms/$defs/create_columns_operation/$defs/columns": close({
		column_id!:   string
		column_name!: string
		expression!:  string
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms/$defs/filter_operation": close({
		condition_expression!: string
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms/$defs/project_operation": close({
		projected_columns!: [...string]
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms/$defs/rename_column_operation": close({
		column_name!:     string
		new_column_name!: string
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms/$defs/tag_column_operation": close({
		tags?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/tag_column_operation/$defs/tags", list.MaxItems(16) & [_, ...] & [..._#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/tag_column_operation/$defs/tags"]])
		column_name!: string
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms/$defs/tag_column_operation/$defs/tags": close({
		column_description?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/tag_column_operation/$defs/tags/$defs/column_description", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/data_transforms/$defs/tag_column_operation/$defs/tags/$defs/column_description"]])
		column_geographic_role?: string
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms/$defs/tag_column_operation/$defs/tags/$defs/column_description": close({
		text?: string
	})

	_#defs: "/$defs/logical_table_map/$defs/data_transforms/$defs/untag_column_operation": close({
		column_name!: string
		tag_names!: [...string]
	})

	_#defs: "/$defs/logical_table_map/$defs/source": close({
		join_instruction?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/source/$defs/join_instruction", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/source/$defs/join_instruction"]])
		data_set_arn?:      string
		physical_table_id?: string
	})

	_#defs: "/$defs/logical_table_map/$defs/source/$defs/join_instruction": close({
		left_join_key_properties?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/source/$defs/join_instruction/$defs/left_join_key_properties", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/source/$defs/join_instruction/$defs/left_join_key_properties"]])
		left_operand!:  string
		on_clause!:     string
		right_operand!: string
		type!:          string
		right_join_key_properties?: matchN(1, [_#defs."/$defs/logical_table_map/$defs/source/$defs/join_instruction/$defs/right_join_key_properties", list.MaxItems(1) & [..._#defs."/$defs/logical_table_map/$defs/source/$defs/join_instruction/$defs/right_join_key_properties"]])
	})

	_#defs: "/$defs/logical_table_map/$defs/source/$defs/join_instruction/$defs/left_join_key_properties": close({
		unique_key?: bool
	})

	_#defs: "/$defs/logical_table_map/$defs/source/$defs/join_instruction/$defs/right_join_key_properties": close({
		unique_key?: bool
	})

	_#defs: "/$defs/physical_table_map/$defs/custom_sql": close({
		columns?: matchN(1, [_#defs."/$defs/physical_table_map/$defs/custom_sql/$defs/columns", list.MaxItems(2048) & [..._#defs."/$defs/physical_table_map/$defs/custom_sql/$defs/columns"]])
		data_source_arn!: string
		name!:            string
		sql_query!:       string
	})

	_#defs: "/$defs/physical_table_map/$defs/custom_sql/$defs/columns": close({
		name!: string
		type!: string
	})

	_#defs: "/$defs/physical_table_map/$defs/relational_table": close({
		input_columns?: matchN(1, [_#defs."/$defs/physical_table_map/$defs/relational_table/$defs/input_columns", list.MaxItems(2048) & [_, ...] & [..._#defs."/$defs/physical_table_map/$defs/relational_table/$defs/input_columns"]])
		catalog?:         string
		data_source_arn!: string
		name!:            string
		schema?:          string
	})

	_#defs: "/$defs/physical_table_map/$defs/relational_table/$defs/input_columns": close({
		name!: string
		type!: string
	})

	_#defs: "/$defs/physical_table_map/$defs/s3_source": close({
		input_columns?: matchN(1, [_#defs."/$defs/physical_table_map/$defs/s3_source/$defs/input_columns", list.MaxItems(2048) & [_, ...] & [..._#defs."/$defs/physical_table_map/$defs/s3_source/$defs/input_columns"]])
		upload_settings?: matchN(1, [_#defs."/$defs/physical_table_map/$defs/s3_source/$defs/upload_settings", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/physical_table_map/$defs/s3_source/$defs/upload_settings"]])
		data_source_arn!: string
	})

	_#defs: "/$defs/physical_table_map/$defs/s3_source/$defs/input_columns": close({
		name!: string
		type!: string
	})

	_#defs: "/$defs/physical_table_map/$defs/s3_source/$defs/upload_settings": close({
		contains_header?: bool
		delimiter?:       string
		format?:          string
		start_from_row?:  number
		text_qualifier?:  string
	})

	_#defs: "/$defs/refresh_properties/$defs/refresh_configuration": close({
		incremental_refresh?: matchN(1, [_#defs."/$defs/refresh_properties/$defs/refresh_configuration/$defs/incremental_refresh", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/refresh_properties/$defs/refresh_configuration/$defs/incremental_refresh"]])
	})

	_#defs: "/$defs/refresh_properties/$defs/refresh_configuration/$defs/incremental_refresh": close({
		lookback_window?: matchN(1, [_#defs."/$defs/refresh_properties/$defs/refresh_configuration/$defs/incremental_refresh/$defs/lookback_window", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/refresh_properties/$defs/refresh_configuration/$defs/incremental_refresh/$defs/lookback_window"]])
	})

	_#defs: "/$defs/refresh_properties/$defs/refresh_configuration/$defs/incremental_refresh/$defs/lookback_window": close({
		column_name!: string
		size!:        number
		size_unit!:   string
	})

	_#defs: "/$defs/row_level_permission_tag_configuration/$defs/tag_rules": close({
		column_name!:               string
		match_all_value?:           string
		tag_key!:                   string
		tag_multi_value_delimiter?: string
	})
}
