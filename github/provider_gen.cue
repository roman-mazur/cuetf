package github

import "list"

#provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/provider")
	close({
		// The GitHub Base API URL
		base_url?: string

		// Enable `insecure` mode for testing purposes
		insecure?: bool

		// Number of items per page for paginationDefaults to 100
		max_per_page?: number

		// Number of times to retry a request after receiving an error
		// status codeDefaults to 3
		max_retries?: number

		// The GitHub owner name to manage. Use this field instead of
		// `organization` when managing individual accounts.
		owner?: string

		// Allow the provider to make parallel API calls to GitHub. You
		// may want to set it to true when you have a private Github
		// Enterprise without strict rate limits. While it is possible to
		// enable this setting on github.com, github.com's best practices
		// recommend using serialization to avoid hitting abuse rate
		// limitsDefaults to false if not set
		parallel_requests?: bool

		// Amount of time in milliseconds to sleep in between non-write
		// requests to GitHub API. Defaults to 0ms if not set.
		read_delay_ms?: number

		// Amount of time in milliseconds to sleep in between requests to
		// GitHub API after an error response. Defaults to 1000ms or 1s
		// if not set, the max_retries must be set to greater than zero.
		retry_delay_ms?: number
		app_auth?: matchN(1, [#app_auth, list.MaxItems(1) & [...#app_auth]])

		// Allow the provider to retry after receiving an error status
		// code, the max_retries should be set for this to workDefaults
		// to [500, 502, 503, 504]
		retryable_errors?: [...number]

		// The OAuth token used to connect to GitHub. Anonymous mode is
		// enabled if both `token` and `app_auth` are not set.
		token?: string

		// Amount of time in milliseconds to sleep in between writes to
		// GitHub API. Defaults to 1000ms or 1s if not set.
		write_delay_ms?: number
	})

	#app_auth: close({
		// The GitHub App ID.
		id!: string

		// The GitHub App installation instance ID.
		installation_id!: string

		// The GitHub App PEM file contents.
		pem_file!: string
	})
}
