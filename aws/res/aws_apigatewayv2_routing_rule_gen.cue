package res

#aws_apigatewayv2_routing_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_apigatewayv2_routing_rule")
	close({
		domain_name!: string
		priority!:    number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:           string
		routing_rule_arn?: string
		routing_rule_id?:  string
		action?: matchN(1, [#action, [...#action]])
		condition?: matchN(1, [#condition, [...#condition]])
	})

	#action: close({
		invoke_api?: matchN(1, [_#defs."/$defs/action/$defs/invoke_api", [..._#defs."/$defs/action/$defs/invoke_api"]])
	})

	#condition: close({
		match_base_paths?: matchN(1, [_#defs."/$defs/condition/$defs/match_base_paths", [..._#defs."/$defs/condition/$defs/match_base_paths"]])
		match_headers?: matchN(1, [_#defs."/$defs/condition/$defs/match_headers", [..._#defs."/$defs/condition/$defs/match_headers"]])
	})

	_#defs: "/$defs/action/$defs/invoke_api": close({
		api_id!:          string
		stage!:           string
		strip_base_path?: bool
	})

	_#defs: "/$defs/condition/$defs/match_base_paths": close({
		any_of!: [...string]
	})

	_#defs: "/$defs/condition/$defs/match_headers": close({
		any_of?: matchN(1, [_#defs."/$defs/condition/$defs/match_headers/$defs/any_of", [..._#defs."/$defs/condition/$defs/match_headers/$defs/any_of"]])
	})

	_#defs: "/$defs/condition/$defs/match_headers/$defs/any_of": close({
		header!:     string
		value_glob!: string
	})
}
