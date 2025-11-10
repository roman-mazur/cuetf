package res

import "list"

#aws_cloudfront_origin_request_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_origin_request_policy")
	close({
		arn?: string
		cookies_config!: matchN(1, [#cookies_config, list.MaxItems(1) & [_, ...] & [...#cookies_config]])
		comment?: string
		etag?:    string
		id?:      string
		name!:    string
		headers_config!: matchN(1, [#headers_config, list.MaxItems(1) & [_, ...] & [...#headers_config]])
		query_strings_config!: matchN(1, [#query_strings_config, list.MaxItems(1) & [_, ...] & [...#query_strings_config]])
	})

	#cookies_config: close({
		cookies?: matchN(1, [_#defs."/$defs/cookies_config/$defs/cookies", list.MaxItems(1) & [..._#defs."/$defs/cookies_config/$defs/cookies"]])
		cookie_behavior!: string
	})

	#headers_config: close({
		headers?: matchN(1, [_#defs."/$defs/headers_config/$defs/headers", list.MaxItems(1) & [..._#defs."/$defs/headers_config/$defs/headers"]])
		header_behavior?: string
	})

	#query_strings_config: close({
		query_strings?: matchN(1, [_#defs."/$defs/query_strings_config/$defs/query_strings", list.MaxItems(1) & [..._#defs."/$defs/query_strings_config/$defs/query_strings"]])
		query_string_behavior!: string
	})

	_#defs: "/$defs/cookies_config/$defs/cookies": close({
		items?: [...string]
	})

	_#defs: "/$defs/headers_config/$defs/headers": close({
		items?: [...string]
	})

	_#defs: "/$defs/query_strings_config/$defs/query_strings": close({
		items?: [...string]
	})
}
