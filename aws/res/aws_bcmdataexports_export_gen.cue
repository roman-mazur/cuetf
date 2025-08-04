package res

#aws_bcmdataexports_export: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_bcmdataexports_export")
	close({
		export?: matchN(1, [#export, [...#export]])
		timeouts?: #timeouts
		arn?:      string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#export: close({
		data_query?: matchN(1, [_#defs."/$defs/export/$defs/data_query", [..._#defs."/$defs/export/$defs/data_query"]])
		destination_configurations?: matchN(1, [_#defs."/$defs/export/$defs/destination_configurations", [..._#defs."/$defs/export/$defs/destination_configurations"]])
		refresh_cadence?: matchN(1, [_#defs."/$defs/export/$defs/refresh_cadence", [..._#defs."/$defs/export/$defs/refresh_cadence"]])
		description?: string
		export_arn?:  string
		name!:        string
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
		update?: string
	})

	_#defs: "/$defs/export/$defs/data_query": close({
		query_statement!: string
		table_configurations?: [string]: [string]: string
	})

	_#defs: "/$defs/export/$defs/destination_configurations": close({
		s3_destination?: matchN(1, [_#defs."/$defs/export/$defs/destination_configurations/$defs/s3_destination", [..._#defs."/$defs/export/$defs/destination_configurations/$defs/s3_destination"]])
	})

	_#defs: "/$defs/export/$defs/destination_configurations/$defs/s3_destination": close({
		s3_output_configurations?: matchN(1, [_#defs."/$defs/export/$defs/destination_configurations/$defs/s3_destination/$defs/s3_output_configurations", [..._#defs."/$defs/export/$defs/destination_configurations/$defs/s3_destination/$defs/s3_output_configurations"]])
		s3_bucket!: string
		s3_prefix!: string
		s3_region!: string
	})

	_#defs: "/$defs/export/$defs/destination_configurations/$defs/s3_destination/$defs/s3_output_configurations": close({
		compression!: string
		format!:      string
		output_type!: string
		overwrite!:   string
	})

	_#defs: "/$defs/export/$defs/refresh_cadence": close({
		frequency!: string
	})
}
