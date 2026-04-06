package data

#aws_cloudfront_cache_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/aws_cloudfront_cache_policy")
	close({
		arn?:         string
		comment?:     string
		default_ttl?: number
		etag?:        string
		id?:          string
		max_ttl?:     number
		min_ttl?:     number
		name?:        string
		parameters_in_cache_key_and_forwarded_to_origin?: [...close({
			cookies_config?: [...close({
				cookie_behavior?: string
				cookies?: [...close({
					items?: [...string]
				})]
			})]
			enable_accept_encoding_brotli?: bool
			enable_accept_encoding_gzip?:   bool
			headers_config?: [...close({
				header_behavior?: string
				headers?: [...close({
					items?: [...string]
				})]
			})]
			query_strings_config?: [...close({
				query_string_behavior?: string
				query_strings?: [...close({
					items?: [...string]
				})]
			})]
		})]
	})
}
