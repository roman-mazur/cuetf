package res

import "list"

#aws_cloudfront_origin_request_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_origin_request_policy")
	close({
		arn?: string
		cookies_config?: matchN(1, [#cookies_config, list.MaxItems(1) & [_, ...] & [...#cookies_config]])
		headers_config?: matchN(1, [#headers_config, list.MaxItems(1) & [_, ...] & [...#headers_config]])
		query_strings_config?: matchN(1, [#query_strings_config, list.MaxItems(1) & [_, ...] & [...#query_strings_config]])
		comment?: string
		etag?:    string
		id?:      string
		name!:    string
	})

	#cookies_config: close({
		cookie_behavior!: string
		cookies?: matchN(1, [_#defs."/$defs/cookies_config/$defs/cookies", list.MaxItems(1) & [..._#defs."/$defs/cookies_config/$defs/cookies"]])
	})

	#headers_config: close({
		header_behavior?: string
		headers?: matchN(1, [_#defs."/$defs/headers_config/$defs/headers", list.MaxItems(1) & [..._#defs."/$defs/headers_config/$defs/headers"]])
	})

	#query_strings_config: close({
		query_string_behavior!: string
		query_strings?: matchN(1, [_#defs."/$defs/query_strings_config/$defs/query_strings", list.MaxItems(1) & [..._#defs."/$defs/query_strings_config/$defs/query_strings"]])
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
