package cloudflare

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare/provider")
	close({
		// The API key for operations. Alternatively, can be configured
		// using the `CLOUDFLARE_API_KEY` environment variable. API keys
		// are [now considered legacy by
		// Cloudflare](https://developers.cloudflare.com/fundamentals/api/get-started/keys/#limitations),
		// API tokens should be used instead. Must provide only one of
		// `api_key`, `api_token`, `api_user_service_key`.
		api_key?: string

		// The API Token for operations. Alternatively, can be configured
		// using the `CLOUDFLARE_API_TOKEN` environment variable. Must
		// provide only one of `api_key`, `api_token`,
		// `api_user_service_key`.
		api_token?: string

		// A special Cloudflare API key good for a restricted set of
		// endpoints. Alternatively, can be configured using the
		// `CLOUDFLARE_API_USER_SERVICE_KEY` environment variable. Must
		// provide only one of `api_key`, `api_token`,
		// `api_user_service_key`.
		api_user_service_key?: string

		// Value to override the default HTTP client base URL.
		// Alternatively, can be configured using the `base_url`
		// environment variable.
		base_url?: string

		// A registered Cloudflare email address. Alternatively, can be
		// configured using the `CLOUDFLARE_EMAIL` environment variable.
		// Required when using `api_key`. Conflicts with `api_token`.
		email?: string

		// A value to append to the HTTP User Agent for all API calls.
		// This value is not something most users need to modify however,
		// if you are using a non-standard provider or operator
		// configuration, this is recommended to assist in uniquely
		// identifying your traffic. **Setting this value will remove the
		// Terraform version from the HTTP User Agent string and may have
		// unintended consequences**. Alternatively, can be configured
		// using the `CLOUDFLARE_USER_AGENT_OPERATOR_SUFFIX` environment
		// variable.
		user_agent_operator_suffix?: string
	})
}
