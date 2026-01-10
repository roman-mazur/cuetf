package res

#aws_billing_view: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_billing_view")
	close({
		arn?:                string
		billing_view_type?:  string
		created_at?:         string
		derived_view_count?: number
		description?:        string
		name!:               string
		owner_account_id?:   string
		source_account_id?:  string
		data_filter_expression?: matchN(1, [#data_filter_expression, [...#data_filter_expression]])
		source_view_count?: number
		source_views?: [...string]
		tags?: [string]: string
		timeouts?: #timeouts
		tags_all?: [string]: string
		updated_at?:                      string
		view_definition_last_updated_at?: string
	})

	#data_filter_expression: close({
		dimensions?: matchN(1, [_#defs."/$defs/data_filter_expression/$defs/dimensions", [..._#defs."/$defs/data_filter_expression/$defs/dimensions"]])
		tags?: matchN(1, [_#defs."/$defs/data_filter_expression/$defs/tags", [..._#defs."/$defs/data_filter_expression/$defs/tags"]])
		time_range?: matchN(1, [_#defs."/$defs/data_filter_expression/$defs/time_range", [..._#defs."/$defs/data_filter_expression/$defs/time_range"]])
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

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of
		// numbers and unit suffixes, such as "30s" or "2h45m". Valid
		// time units are "s" (seconds), "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/data_filter_expression/$defs/dimensions": close({
		key!: string
		values!: [...string]
	})

	_#defs: "/$defs/data_filter_expression/$defs/tags": close({
		key!: string
		values!: [...string]
	})

	_#defs: "/$defs/data_filter_expression/$defs/time_range": close({
		begin_date_inclusive!: string
		end_date_inclusive!:   string
	})
}
