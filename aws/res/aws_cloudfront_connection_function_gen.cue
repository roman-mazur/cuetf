package res

#aws_cloudfront_connection_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudfront_connection_function")
	close({
		connection_function_arn?:  string
		connection_function_code!: string
		etag?:                     string
		id?:                       string
		live_stage_etag?:          string
		name!:                     string
		publish?:                  bool
		connection_function_config?: matchN(1, [#connection_function_config, [...#connection_function_config]])
		status?: string
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#connection_function_config: close({
		key_value_store_association?: matchN(1, [_#defs."/$defs/connection_function_config/$defs/key_value_store_association", [..._#defs."/$defs/connection_function_config/$defs/key_value_store_association"]])
		comment!: string
		runtime!: string
	})

	_#defs: "/$defs/connection_function_config/$defs/key_value_store_association": close({
		key_value_store_arn!: string
	})
}
