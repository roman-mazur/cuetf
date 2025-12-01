package res

#aws_lakeformation_data_cells_filter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lakeformation_data_cells_filter")
	close({
		table_data?: matchN(1, [#table_data, [...#table_data]])
		timeouts?: #timeouts
		id?:       string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
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
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
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
