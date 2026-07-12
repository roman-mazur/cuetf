package github

import "list"

provider: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/github/provider")
	close({
		app_auth?: matchN(1, [#app_auth, list.MaxItems(1) & [...#app_auth]])

		// The base URL for the GitHub API; this defaults to the GitHub API URL. If you
		// are using GitHub Enterprise Server (GHES) or GitHub Enterprise Cloud with
		// Data Residency (GHEC-DR), this is required. This can also be set by the
		// `GITHUB_BASE_URL` environment variable.
		base_url?: string

		// The path to the cache directory for persisting GitHub API requests between
		// runs; if not set there will be no caching between runs. This can also be set
		// by the `GITHUB_CACHE_PATH` environment variable.
		cache_path?: string

		// Use the legacy GitHub client implementation; if set to `false`, the new
		// client implementation is used. This can also be set by the
		// `GITHUB_LEGACY_CLIENT` environment variable.
		legacy_client?: bool

		// The maximum number of results per page for paginated API requests; this
		// defaults to `100`. This can also be set by the `GITHUB_MAX_PER_PAGE`
		// environment variable.
		max_per_page?: number

		// The maximum number of retries for failed requests; this defaults to `3`.
		max_retries?: number

		// GitHub organization or user account to manage; this is required when
		// authenticating using a GitHub App. If the owner is not provided and a token
		// is provided, the provider will attempt to auto-detect the owner associated
		// with the token. This can also be set by the `GITHUB_OWNER` environment
		// variable.
		owner?: string

		// Allow the provider to make parallel API calls; this is experimental and may
		// cause concurrency and rate limiting issues. This is ignored for the REST API
		// when `legacy_client` is `false` since the new client implementation is
		// designed to safely handle parallel requests.
		parallel_requests?: bool

		// The delay in milliseconds between read operations; this defaults to `0`. This
		// can be used to mitigate rate limiting issues when performing a large number
		// of read operations. This is ignored for the REST API when `legacy_client` is
		// `false` since the new client implementation is GitHub rate limit aware.
		read_delay_ms?: number

		// The delay in milliseconds between retry attempts; this defaults to `1000`.
		// This setting only applies when `max_retries` is greater than `0`.
		retry_delay_ms?: number

		// List of HTTP status codes that should be retried; if not set this uses the
		// provider defaults. This setting only applies when `max_retries` is greater
		// than `0`. This is ignored for the REST API when `legacy_client` is `false`
		// since the new client implementation handles the retry logic.
		retryable_errors?: [...number]

		// GitHub OAuth or Personal Access Token (PAT) to use for authentication. This
		// can also be set by the `GITHUB_TOKEN` environment variable.
		token?: string

		// The delay in milliseconds between write operations; this defaults to `1000`.
		// This is used to mitigate the GitHub API's abuse rate limits when writing.
		// Note that **ALL** requests to the GraphQL API are implemented as `POST`
		// requests under the hood, so this setting affects those calls as well. This
		// is ignored for the REST API when `legacy_client` is `false` since the new
		// client implementation is GitHub rate limit aware.
		write_delay_ms?: number
	})

	#app_auth: close({
		// The GitHub App's identifier. This can also be set by the `GITHUB_APP_ID` environment variable.
		id!: string

		// The GitHub App's installation identifier. This can also be set by the
		// `GITHUB_APP_INSTALLATION_ID` environment variable.
		installation_id!: string

		// The GitHub App's PEM file content; `\n` can be used for newlines. This can
		// also be set by the `GITHUB_APP_PEM_FILE` environment variable.
		pem_file!: string
	})
}
