package res

#aws_cloudwatch_log_transformer: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_cloudwatch_log_transformer")
	close({
		transformer_config?: matchN(1, [#transformer_config, [...#transformer_config]])
		log_group_arn!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#transformer_config: close({
		add_keys?: matchN(1, [_#defs."/$defs/transformer_config/$defs/add_keys", [..._#defs."/$defs/transformer_config/$defs/add_keys"]])
		copy_value?: matchN(1, [_#defs."/$defs/transformer_config/$defs/copy_value", [..._#defs."/$defs/transformer_config/$defs/copy_value"]])
		csv?: matchN(1, [_#defs."/$defs/transformer_config/$defs/csv", [..._#defs."/$defs/transformer_config/$defs/csv"]])
		date_time_converter?: matchN(1, [_#defs."/$defs/transformer_config/$defs/date_time_converter", [..._#defs."/$defs/transformer_config/$defs/date_time_converter"]])
		delete_keys?: matchN(1, [_#defs."/$defs/transformer_config/$defs/delete_keys", [..._#defs."/$defs/transformer_config/$defs/delete_keys"]])
		grok?: matchN(1, [_#defs."/$defs/transformer_config/$defs/grok", [..._#defs."/$defs/transformer_config/$defs/grok"]])
		list_to_map?: matchN(1, [_#defs."/$defs/transformer_config/$defs/list_to_map", [..._#defs."/$defs/transformer_config/$defs/list_to_map"]])
		lower_case_string?: matchN(1, [_#defs."/$defs/transformer_config/$defs/lower_case_string", [..._#defs."/$defs/transformer_config/$defs/lower_case_string"]])
		move_keys?: matchN(1, [_#defs."/$defs/transformer_config/$defs/move_keys", [..._#defs."/$defs/transformer_config/$defs/move_keys"]])
		parse_cloudfront?: matchN(1, [_#defs."/$defs/transformer_config/$defs/parse_cloudfront", [..._#defs."/$defs/transformer_config/$defs/parse_cloudfront"]])
		parse_json?: matchN(1, [_#defs."/$defs/transformer_config/$defs/parse_json", [..._#defs."/$defs/transformer_config/$defs/parse_json"]])
		parse_key_value?: matchN(1, [_#defs."/$defs/transformer_config/$defs/parse_key_value", [..._#defs."/$defs/transformer_config/$defs/parse_key_value"]])
		parse_postgres?: matchN(1, [_#defs."/$defs/transformer_config/$defs/parse_postgres", [..._#defs."/$defs/transformer_config/$defs/parse_postgres"]])
		parse_route53?: matchN(1, [_#defs."/$defs/transformer_config/$defs/parse_route53", [..._#defs."/$defs/transformer_config/$defs/parse_route53"]])
		parse_to_ocsf?: matchN(1, [_#defs."/$defs/transformer_config/$defs/parse_to_ocsf", [..._#defs."/$defs/transformer_config/$defs/parse_to_ocsf"]])
		parse_vpc?: matchN(1, [_#defs."/$defs/transformer_config/$defs/parse_vpc", [..._#defs."/$defs/transformer_config/$defs/parse_vpc"]])
		parse_waf?: matchN(1, [_#defs."/$defs/transformer_config/$defs/parse_waf", [..._#defs."/$defs/transformer_config/$defs/parse_waf"]])
		rename_keys?: matchN(1, [_#defs."/$defs/transformer_config/$defs/rename_keys", [..._#defs."/$defs/transformer_config/$defs/rename_keys"]])
		split_string?: matchN(1, [_#defs."/$defs/transformer_config/$defs/split_string", [..._#defs."/$defs/transformer_config/$defs/split_string"]])
		substitute_string?: matchN(1, [_#defs."/$defs/transformer_config/$defs/substitute_string", [..._#defs."/$defs/transformer_config/$defs/substitute_string"]])
		trim_string?: matchN(1, [_#defs."/$defs/transformer_config/$defs/trim_string", [..._#defs."/$defs/transformer_config/$defs/trim_string"]])
		type_converter?: matchN(1, [_#defs."/$defs/transformer_config/$defs/type_converter", [..._#defs."/$defs/transformer_config/$defs/type_converter"]])
		upper_case_string?: matchN(1, [_#defs."/$defs/transformer_config/$defs/upper_case_string", [..._#defs."/$defs/transformer_config/$defs/upper_case_string"]])
	})

	_#defs: "/$defs/transformer_config/$defs/add_keys": close({
		entry?: matchN(1, [_#defs."/$defs/transformer_config/$defs/add_keys/$defs/entry", [..._#defs."/$defs/transformer_config/$defs/add_keys/$defs/entry"]])
	})

	_#defs: "/$defs/transformer_config/$defs/add_keys/$defs/entry": close({
		key!:                 string
		overwrite_if_exists?: bool
		value!:               string
	})

	_#defs: "/$defs/transformer_config/$defs/copy_value": close({
		entry?: matchN(1, [_#defs."/$defs/transformer_config/$defs/copy_value/$defs/entry", [..._#defs."/$defs/transformer_config/$defs/copy_value/$defs/entry"]])
	})

	_#defs: "/$defs/transformer_config/$defs/copy_value/$defs/entry": close({
		overwrite_if_exists?: bool
		source!:              string
		target!:              string
	})

	_#defs: "/$defs/transformer_config/$defs/csv": close({
		columns?: [...string]
		delimiter?:       string
		quote_character?: string
		source?:          string
	})

	_#defs: "/$defs/transformer_config/$defs/date_time_converter": close({
		locale?: string
		match_patterns!: [...string]
		source!:          string
		source_timezone?: string
		target!:          string
		target_format?:   string
		target_timezone?: string
	})

	_#defs: "/$defs/transformer_config/$defs/delete_keys": close({
		with_keys!: [...string]
	})

	_#defs: "/$defs/transformer_config/$defs/grok": close({
		match!:  string
		source?: string
	})

	_#defs: "/$defs/transformer_config/$defs/list_to_map": close({
		flatten?:           bool
		flattened_element?: string
		key!:               string
		source!:            string
		target?:            string
		value_key?:         string
	})

	_#defs: "/$defs/transformer_config/$defs/lower_case_string": close({
		with_keys!: [...string]
	})

	_#defs: "/$defs/transformer_config/$defs/move_keys": close({
		entry?: matchN(1, [_#defs."/$defs/transformer_config/$defs/move_keys/$defs/entry", [..._#defs."/$defs/transformer_config/$defs/move_keys/$defs/entry"]])
	})

	_#defs: "/$defs/transformer_config/$defs/move_keys/$defs/entry": close({
		overwrite_if_exists?: bool
		source!:              string
		target!:              string
	})

	_#defs: "/$defs/transformer_config/$defs/parse_cloudfront": close({
		source?: string
	})

	_#defs: "/$defs/transformer_config/$defs/parse_json": close({
		destination?: string
		source?:      string
	})

	_#defs: "/$defs/transformer_config/$defs/parse_key_value": close({
		destination?:         string
		field_delimiter?:     string
		key_prefix?:          string
		key_value_delimiter?: string
		non_match_value?:     string
		overwrite_if_exists?: bool
		source?:              string
	})

	_#defs: "/$defs/transformer_config/$defs/parse_postgres": close({
		source?: string
	})

	_#defs: "/$defs/transformer_config/$defs/parse_route53": close({
		source?: string
	})

	_#defs: "/$defs/transformer_config/$defs/parse_to_ocsf": close({
		event_source!: string
		ocsf_version!: string
		source?:       string
	})

	_#defs: "/$defs/transformer_config/$defs/parse_vpc": close({
		source?: string
	})

	_#defs: "/$defs/transformer_config/$defs/parse_waf": close({
		source?: string
	})

	_#defs: "/$defs/transformer_config/$defs/rename_keys": close({
		entry?: matchN(1, [_#defs."/$defs/transformer_config/$defs/rename_keys/$defs/entry", [..._#defs."/$defs/transformer_config/$defs/rename_keys/$defs/entry"]])
	})

	_#defs: "/$defs/transformer_config/$defs/rename_keys/$defs/entry": close({
		key!:                 string
		overwrite_if_exists?: bool
		rename_to!:           string
	})

	_#defs: "/$defs/transformer_config/$defs/split_string": close({
		entry?: matchN(1, [_#defs."/$defs/transformer_config/$defs/split_string/$defs/entry", [..._#defs."/$defs/transformer_config/$defs/split_string/$defs/entry"]])
	})

	_#defs: "/$defs/transformer_config/$defs/split_string/$defs/entry": close({
		delimiter!: string
		source!:    string
	})

	_#defs: "/$defs/transformer_config/$defs/substitute_string": close({
		entry?: matchN(1, [_#defs."/$defs/transformer_config/$defs/substitute_string/$defs/entry", [..._#defs."/$defs/transformer_config/$defs/substitute_string/$defs/entry"]])
	})

	_#defs: "/$defs/transformer_config/$defs/substitute_string/$defs/entry": close({
		from!:   string
		source!: string
		to!:     string
	})

	_#defs: "/$defs/transformer_config/$defs/trim_string": close({
		with_keys!: [...string]
	})

	_#defs: "/$defs/transformer_config/$defs/type_converter": close({
		entry?: matchN(1, [_#defs."/$defs/transformer_config/$defs/type_converter/$defs/entry", [..._#defs."/$defs/transformer_config/$defs/type_converter/$defs/entry"]])
	})

	_#defs: "/$defs/transformer_config/$defs/type_converter/$defs/entry": close({
		key!:  string
		type!: string
	})

	_#defs: "/$defs/transformer_config/$defs/upper_case_string": close({
		with_keys!: [...string]
	})
}
