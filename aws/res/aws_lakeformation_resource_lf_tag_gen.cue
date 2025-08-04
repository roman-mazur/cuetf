package res

#aws_lakeformation_resource_lf_tag: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_lakeformation_resource_lf_tag")
	close({
		database?: matchN(1, [#database, [...#database]])
		lf_tag?: matchN(1, [#lf_tag, [...#lf_tag]])

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:     string
		catalog_id?: string
		id?:         string
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
		column_wildcard?: matchN(1, [_#defs."/$defs/table_with_columns/$defs/column_wildcard", [..._#defs."/$defs/table_with_columns/$defs/column_wildcard"]])
		catalog_id?: string
		column_names?: [...string]
		database_name!: string
		name!:          string
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		// Setting a timeout for a Delete operation is only applicable if
		// changes are saved into state before the destroy operation
		// occurs.
		delete?: string
	})

	_#defs: "/$defs/table_with_columns/$defs/column_wildcard": close({
		excluded_column_names?: [...string]
	})
}
