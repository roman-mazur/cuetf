package data

#cloudflare_r2_bucket_cors: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket_cors")
	close({
		// Account ID.
		account_id!: string

		// Name of the bucket.
		bucket_name!: string
		rules?: matchN(1, [close({
			// Object specifying allowed origins, methods and headers for this
			// CORS rule.
			allowed?: close({
				// Specifies the value for the Access-Control-Allow-Headers header
				// R2 sets when requesting objects in this bucket from a browser.
				// Cross-origin requests that include custom headers (e.g.
				// x-user-id) should specify these headers as AllowedHeaders.
				headers?: [...string]

				// Specifies the value for the Access-Control-Allow-Methods header
				// R2 sets when requesting objects in a bucket from a browser.
				methods?: [...string]

				// Specifies the value for the Access-Control-Allow-Origin header
				// R2 sets when requesting objects in a bucket from a browser.
				origins?: [...string]
			})

			// Specifies the headers that can be exposed back, and accessed
			// by, the JavaScript making the cross-origin request. If you
			// need to access headers beyond the safelisted response headers,
			// such as Content-Encoding or cf-cache-status, you must specify
			// it here.
			expose_headers?: [...string]

			// Identifier for this rule.
			id?: string

			// Specifies the amount of time (in seconds) browsers are allowed
			// to cache CORS preflight responses. Browsers may limit this to
			// 2 hours or less, even if the maximum value (86400) is
			// specified.
			max_age_seconds?: number
		}), [...close({
			// Object specifying allowed origins, methods and headers for this
			// CORS rule.
			allowed?: close({
				// Specifies the value for the Access-Control-Allow-Headers header
				// R2 sets when requesting objects in this bucket from a browser.
				// Cross-origin requests that include custom headers (e.g.
				// x-user-id) should specify these headers as AllowedHeaders.
				headers?: [...string]

				// Specifies the value for the Access-Control-Allow-Methods header
				// R2 sets when requesting objects in a bucket from a browser.
				methods?: [...string]

				// Specifies the value for the Access-Control-Allow-Origin header
				// R2 sets when requesting objects in a bucket from a browser.
				origins?: [...string]
			})

			// Specifies the headers that can be exposed back, and accessed
			// by, the JavaScript making the cross-origin request. If you
			// need to access headers beyond the safelisted response headers,
			// such as Content-Encoding or cf-cache-status, you must specify
			// it here.
			expose_headers?: [...string]

			// Identifier for this rule.
			id?: string

			// Specifies the amount of time (in seconds) browsers are allowed
			// to cache CORS preflight responses. Browsers may limit this to
			// 2 hours or less, even if the maximum value (86400) is
			// specified.
			max_age_seconds?: number
		})]])
	})
}
