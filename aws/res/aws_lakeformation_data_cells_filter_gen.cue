package res

#aws_lakeformation_data_cells_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lakeformation_data_cells_filter")
	close({
		table_data?: matchN(1, [#table_data, [...#table_data]])
		timeouts?: #timeouts
		id?:       string
		region?:   string
	})

	#table_data: close({
		column_wildcard?: matchN(1, [_#defs."/$defs/table_data/$defs/column_wildcard", [..._#defs."/$defs/table_data/$defs/column_wildcard"]])
		column_names?: [...string]
		database_name!:    string
		name!:             string
		table_catalog_id!: string
		table_name!:       string
		version_id?:       string
		row_filter?: matchN(1, [_#defs."/$defs/table_data/$defs/row_filter", [..._#defs."/$defs/table_data/$defs/row_filter"]])
	})

	#timeouts: close({
		create?: string
	})

	_#defs: "/$defs/table_data/$defs/column_wildcard": close({
		excluded_column_names?: [...string]
	})

	_#defs: "/$defs/table_data/$defs/row_filter": close({
		all_rows_wildcard?: matchN(1, [_#defs."/$defs/table_data/$defs/row_filter/$defs/all_rows_wildcard", [..._#defs."/$defs/table_data/$defs/row_filter/$defs/all_rows_wildcard"]])
		filter_expression?: string
	})

	_#defs: "/$defs/table_data/$defs/row_filter/$defs/all_rows_wildcard": close({})
}
