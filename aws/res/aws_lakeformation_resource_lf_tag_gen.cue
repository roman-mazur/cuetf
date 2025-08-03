package res

#aws_lakeformation_resource_lf_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lakeformation_resource_lf_tag")
	close({
		database?: matchN(1, [#database, [...#database]])
		catalog_id?: string
		id?:         string
		region?:     string
		lf_tag?: matchN(1, [#lf_tag, [...#lf_tag]])
		table?: matchN(1, [#table, [...#table]])
		table_with_columns?: matchN(1, [#table_with_columns, [...#table_with_columns]])
		timeouts?: #timeouts
	})

	#database: close({
		catalog_id?: string
		name!:       string
	})

	#lf_tag: close({
		catalog_id?: string
		key!:        string
		value!:      string
	})

	#table: close({
		catalog_id?:    string
		database_name!: string
		name?:          string
		wildcard?:      bool
	})

	#table_with_columns: close({
		catalog_id?: string
		column_names?: [...string]
		database_name!: string
		name!:          string
		column_wildcard?: matchN(1, [_#defs."/$defs/table_with_columns/$defs/column_wildcard", [..._#defs."/$defs/table_with_columns/$defs/column_wildcard"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	_#defs: "/$defs/table_with_columns/$defs/column_wildcard": close({
		excluded_column_names?: [...string]
	})
}
