package res

import "list"

#aws_cloudfront_origin_request_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_origin_request_policy")
	comment?: string
	etag?:    string
	id?:      string
	name!:    string
	cookies_config?: #cookies_config | list.MaxItems(1) & [_, ...] & [...#cookies_config]
	headers_config?: #headers_config | list.MaxItems(1) & [_, ...] & [...#headers_config]
	query_strings_config?: #query_strings_config | list.MaxItems(1) & [_, ...] & [...#query_strings_config]

	#cookies_config: {
		cookie_behavior!: string
		cookies?: #cookies_config.#cookies | list.MaxItems(1) & [...#cookies_config.#cookies]

		#cookies: items?: [...string]
	}

	#headers_config: {
		header_behavior?: string
		headers?: #headers_config.#headers | list.MaxItems(1) & [...#headers_config.#headers]

		#headers: items?: [...string]
	}

	#query_strings_config: {
		query_string_behavior!: string
		query_strings?: #query_strings_config.#query_strings | list.MaxItems(1) & [...#query_strings_config.#query_strings]

		#query_strings: items?: [...string]
	}
}
