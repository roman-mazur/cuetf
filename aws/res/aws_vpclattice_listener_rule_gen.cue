package res

import "list"

#aws_vpclattice_listener_rule: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_vpclattice_listener_rule")
	close({
		arn?:                 string
		id?:                  string
		listener_identifier!: string
		name!:                string
		priority!:            number

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		action?: matchN(1, [#action, list.MaxItems(1) & [_, ...] & [...#action]])
		match?: matchN(1, [#match, list.MaxItems(1) & [_, ...] & [...#match]])
		rule_id?:            string
		service_identifier!: string
		tags?: [string]:     string
		tags_all?: [string]: string
		timeouts?: #timeouts
	})

	#action: close({
		fixed_response?: matchN(1, [_#defs."/$defs/action/$defs/fixed_response", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/fixed_response"]])
		forward?: matchN(1, [_#defs."/$defs/action/$defs/forward", list.MaxItems(1) & [..._#defs."/$defs/action/$defs/forward"]])
	})

	#match: close({
		http_match?: matchN(1, [_#defs."/$defs/match/$defs/http_match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/match/$defs/http_match"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/action/$defs/fixed_response": close({
		status_code!: number
	})

	_#defs: "/$defs/action/$defs/forward": close({
		target_groups?: matchN(1, [_#defs."/$defs/action/$defs/forward/$defs/target_groups", [_, ...] & [..._#defs."/$defs/action/$defs/forward/$defs/target_groups"]])
	})

	_#defs: "/$defs/action/$defs/forward/$defs/target_groups": close({
		target_group_identifier!: string
		weight?:                  number
	})

	_#defs: "/$defs/match/$defs/http_match": close({
		header_matches?: matchN(1, [_#defs."/$defs/match/$defs/http_match/$defs/header_matches", list.MaxItems(5) & [..._#defs."/$defs/match/$defs/http_match/$defs/header_matches"]])
		path_match?: matchN(1, [_#defs."/$defs/match/$defs/http_match/$defs/path_match", list.MaxItems(1) & [..._#defs."/$defs/match/$defs/http_match/$defs/path_match"]])
		method?: string
	})

	_#defs: "/$defs/match/$defs/http_match/$defs/header_matches": close({
		match?: matchN(1, [_#defs."/$defs/match/$defs/http_match/$defs/header_matches/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/match/$defs/http_match/$defs/header_matches/$defs/match"]])
		case_sensitive?: bool
		name!:           string
	})

	_#defs: "/$defs/match/$defs/http_match/$defs/header_matches/$defs/match": close({
		contains?: string
		exact?:    string
		prefix?:   string
	})

	_#defs: "/$defs/match/$defs/http_match/$defs/path_match": close({
		match?: matchN(1, [_#defs."/$defs/match/$defs/http_match/$defs/path_match/$defs/match", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/match/$defs/http_match/$defs/path_match/$defs/match"]])
		case_sensitive?: bool
	})

	_#defs: "/$defs/match/$defs/http_match/$defs/path_match/$defs/match": close({
		exact?:  string
		prefix?: string
	})
}
