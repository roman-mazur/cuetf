package res

aws_bedrockagentcore_gateway_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_bedrockagentcore_gateway_rule")
	close({
		action?: matchN(1, [#action, [...#action]])
		condition?: matchN(1, [#condition, [...#condition]])
		timeouts?:    #timeouts
		description?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:             string
		gateway_arn?:        string
		gateway_identifier!: string
		priority!:           number
		rule_id?:            string
		system?: [...close({
			managed_by?: string
		})]
	})

	#action: close({
		configuration_bundle?: matchN(1, [_#defs."/$defs/action/$defs/configuration_bundle", [..._#defs."/$defs/action/$defs/configuration_bundle"]])
		route_to_target?: matchN(1, [_#defs."/$defs/action/$defs/route_to_target", [..._#defs."/$defs/action/$defs/route_to_target"]])
	})

	#condition: close({
		match_paths?: matchN(1, [_#defs."/$defs/condition/$defs/match_paths", [..._#defs."/$defs/condition/$defs/match_paths"]])
		match_principals?: matchN(1, [_#defs."/$defs/condition/$defs/match_principals", [..._#defs."/$defs/condition/$defs/match_principals"]])
	})

	#timeouts: close({
		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		create?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
		// applicable if changes are saved into state before the destroy operation
		// occurs.
		delete?: string

		// A string that can be [parsed as a
		// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
		// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
		// "m" (minutes), "h" (hours).
		update?: string
	})

	_#defs: "/$defs/action/$defs/configuration_bundle": close({
		static_override?: matchN(1, [_#defs."/$defs/action/$defs/configuration_bundle/$defs/static_override", [..._#defs."/$defs/action/$defs/configuration_bundle/$defs/static_override"]])
		weighted_override?: matchN(1, [_#defs."/$defs/action/$defs/configuration_bundle/$defs/weighted_override", [..._#defs."/$defs/action/$defs/configuration_bundle/$defs/weighted_override"]])
	})

	_#defs: "/$defs/action/$defs/configuration_bundle/$defs/static_override": close({
		bundle_arn!:     string
		bundle_version!: string
	})

	_#defs: "/$defs/action/$defs/configuration_bundle/$defs/weighted_override": close({
		traffic_split?: matchN(1, [_#defs."/$defs/action/$defs/configuration_bundle/$defs/weighted_override/$defs/traffic_split", [..._#defs."/$defs/action/$defs/configuration_bundle/$defs/weighted_override/$defs/traffic_split"]])
	})

	_#defs: "/$defs/action/$defs/configuration_bundle/$defs/weighted_override/$defs/traffic_split": close({
		configuration_bundle?: matchN(1, [_#defs."/$defs/action/$defs/configuration_bundle/$defs/weighted_override/$defs/traffic_split/$defs/configuration_bundle", [..._#defs."/$defs/action/$defs/configuration_bundle/$defs/weighted_override/$defs/traffic_split/$defs/configuration_bundle"]])
		description?: string
		metadata?: [string]: string
		name!:   string
		weight!: number
	})

	_#defs: "/$defs/action/$defs/configuration_bundle/$defs/weighted_override/$defs/traffic_split/$defs/configuration_bundle": close({
		bundle_arn!:     string
		bundle_version!: string
	})

	_#defs: "/$defs/action/$defs/route_to_target": close({
		static_route?: matchN(1, [_#defs."/$defs/action/$defs/route_to_target/$defs/static_route", [..._#defs."/$defs/action/$defs/route_to_target/$defs/static_route"]])
		weighted_route?: matchN(1, [_#defs."/$defs/action/$defs/route_to_target/$defs/weighted_route", [..._#defs."/$defs/action/$defs/route_to_target/$defs/weighted_route"]])
	})

	_#defs: "/$defs/action/$defs/route_to_target/$defs/static_route": close({
		target_name!: string
	})

	_#defs: "/$defs/action/$defs/route_to_target/$defs/weighted_route": close({
		traffic_split?: matchN(1, [_#defs."/$defs/action/$defs/route_to_target/$defs/weighted_route/$defs/traffic_split", [..._#defs."/$defs/action/$defs/route_to_target/$defs/weighted_route/$defs/traffic_split"]])
	})

	_#defs: "/$defs/action/$defs/route_to_target/$defs/weighted_route/$defs/traffic_split": close({
		description?: string
		metadata?: [string]: string
		name!:        string
		target_name!: string
		weight!:      number
	})

	_#defs: "/$defs/condition/$defs/match_paths": close({
		any_of!: [...string]
	})

	_#defs: "/$defs/condition/$defs/match_principals": close({
		any_of?: matchN(1, [_#defs."/$defs/condition/$defs/match_principals/$defs/any_of", [..._#defs."/$defs/condition/$defs/match_principals/$defs/any_of"]])
	})

	_#defs: "/$defs/condition/$defs/match_principals/$defs/any_of": close({
		iam_principal?: matchN(1, [_#defs."/$defs/condition/$defs/match_principals/$defs/any_of/$defs/iam_principal", [..._#defs."/$defs/condition/$defs/match_principals/$defs/any_of/$defs/iam_principal"]])
	})

	_#defs: "/$defs/condition/$defs/match_principals/$defs/any_of/$defs/iam_principal": close({
		arn!:      string
		operator?: string
	})
}
