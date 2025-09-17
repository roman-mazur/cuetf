package data

#aws_cloudfront_origin_request_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_cloudfront_origin_request_policy")
	close({
		arn?:     string
		comment?: string
		cookies_config?: [...close({
			cookie_behavior?: string
			cookies?: [...close({
				items?: [...string]
			})]
		})]
		etag?: string
		headers_config?: [...close({
			header_behavior?: string
			headers?: [...close({
				items?: [...string]
			})]
		})]
		id?:   string
		name?: string
		query_strings_config?: [...close({
			query_string_behavior?: string
			query_strings?: [...close({
				items?: [...string]
			})]
		})]
	})
}
