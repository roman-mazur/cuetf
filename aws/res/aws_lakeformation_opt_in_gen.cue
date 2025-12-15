package res

#aws_lakeformation_opt_in: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_lakeformation_opt_in")
	close({
		last_modified?: string
		condition?: matchN(1, [#condition, [...#condition]])
		principal?: matchN(1, [#principal, [...#principal]])
		resource_data?: matchN(1, [#resource_data, [...#resource_data]])
		last_updated_by?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#condition: close({
		expression?: string
	})

	#principal: close({
		data_lake_principal_identifier!: string
	})

	#resource_data: close({
		catalog?: matchN(1, [_#defs."/$defs/resource_data/$defs/catalog", [..._#defs."/$defs/resource_data/$defs/catalog"]])
		data_cells_filter?: matchN(1, [_#defs."/$defs/resource_data/$defs/data_cells_filter", [..._#defs."/$defs/resource_data/$defs/data_cells_filter"]])
		data_location?: matchN(1, [_#defs."/$defs/resource_data/$defs/data_location", [..._#defs."/$defs/resource_data/$defs/data_location"]])
		database?: matchN(1, [_#defs."/$defs/resource_data/$defs/database", [..._#defs."/$defs/resource_data/$defs/database"]])
		lf_tag?: matchN(1, [_#defs."/$defs/resource_data/$defs/lf_tag", [..._#defs."/$defs/resource_data/$defs/lf_tag"]])
		lf_tag_expression?: matchN(1, [_#defs."/$defs/resource_data/$defs/lf_tag_expression", [..._#defs."/$defs/resource_data/$defs/lf_tag_expression"]])
		lf_tag_policy?: matchN(1, [_#defs."/$defs/resource_data/$defs/lf_tag_policy", [..._#defs."/$defs/resource_data/$defs/lf_tag_policy"]])
		table?: matchN(1, [_#defs."/$defs/resource_data/$defs/table", [..._#defs."/$defs/resource_data/$defs/table"]])
		table_with_columns?: matchN(1, [_#defs."/$defs/resource_data/$defs/table_with_columns", [..._#defs."/$defs/resource_data/$defs/table_with_columns"]])
	})

	_#defs: "/$defs/resource_data/$defs/catalog": close({
		id?: string
	})

	_#defs: "/$defs/resource_data/$defs/data_cells_filter": close({
		database_name?:    string
		name?:             string
		table_catalog_id?: string
		table_name?:       string
	})

	_#defs: "/$defs/resource_data/$defs/data_location": close({
		catalog_id?:   string
		resource_arn!: string
	})

	_#defs: "/$defs/resource_data/$defs/database": close({
		catalog_id?: string
		name!:       string
	})

	_#defs: "/$defs/resource_data/$defs/lf_tag": close({
		catalog_id?: string
		key!:        string
		value!:      string
	})

	_#defs: "/$defs/resource_data/$defs/lf_tag_expression": close({
		catalog_id?: string
		name!:       string
	})

	_#defs: "/$defs/resource_data/$defs/lf_tag_policy": close({
		catalog_id?: string
		expression?: [...string]
		expression_name?: string
		resource_type!:   string
	})

	_#defs: "/$defs/resource_data/$defs/table": close({
		catalog_id?:    string
		database_name!: string
		name?:          string
		wildcard?:      bool
	})

	_#defs: "/$defs/resource_data/$defs/table_with_columns": close({
		column_wildcard?: matchN(1, [_#defs."/$defs/resource_data/$defs/table_with_columns/$defs/column_wildcard", [..._#defs."/$defs/resource_data/$defs/table_with_columns/$defs/column_wildcard"]])
		catalog_id?: string
		column_names?: [...string]
		database_name!: string
		name!:          string
	})

	_#defs: "/$defs/resource_data/$defs/table_with_columns/$defs/column_wildcard": close({
		excluded_column_names?: [...string]
	})
}
