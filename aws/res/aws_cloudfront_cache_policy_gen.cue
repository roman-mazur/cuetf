package res

import "list"

#aws_cloudfront_cache_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_cache_policy")
	close({
		parameters_in_cache_key_and_forwarded_to_origin!: matchN(1, [#parameters_in_cache_key_and_forwarded_to_origin, list.MaxItems(1) & [_, ...] & [...#parameters_in_cache_key_and_forwarded_to_origin]])
		arn?:         string
		comment?:     string
		default_ttl?: number
		etag?:        string
		id?:          string
		max_ttl?:     number
		min_ttl?:     number
		name!:        string
	})

	#parameters_in_cache_key_and_forwarded_to_origin: close({
		cookies_config!: matchN(1, [_#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/cookies_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/cookies_config"]])
		headers_config!: matchN(1, [_#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/headers_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/headers_config"]])
		query_strings_config!: matchN(1, [_#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/query_strings_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/query_strings_config"]])
		enable_accept_encoding_brotli?: bool
		enable_accept_encoding_gzip?:   bool
	})

	_#defs: "/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/cookies_config": close({
		cookies?: matchN(1, [_#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/cookies_config/$defs/cookies", list.MaxItems(1) & [..._#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/cookies_config/$defs/cookies"]])
		cookie_behavior!: string
	})

	_#defs: "/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/cookies_config/$defs/cookies": close({
		items?: [...string]
	})

	_#defs: "/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/headers_config": close({
		headers?: matchN(1, [_#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/headers_config/$defs/headers", list.MaxItems(1) & [..._#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/headers_config/$defs/headers"]])
		header_behavior?: string
	})

	_#defs: "/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/headers_config/$defs/headers": close({
		items?: [...string]
	})

	_#defs: "/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/query_strings_config": close({
		query_strings?: matchN(1, [_#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/query_strings_config/$defs/query_strings", list.MaxItems(1) & [..._#defs."/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/query_strings_config/$defs/query_strings"]])
		query_string_behavior!: string
	})

	_#defs: "/$defs/parameters_in_cache_key_and_forwarded_to_origin/$defs/query_strings_config/$defs/query_strings": close({
		items?: [...string]
	})
}
