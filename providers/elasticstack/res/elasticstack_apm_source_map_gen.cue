package res

#elasticstack_apm_source_map: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_apm_source_map")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The absolute path of the final bundle as used in the web
		// application (e.g. `/static/js/main.chunk.js`). Must match the
		// path used during the build.
		bundle_filepath!: string

		// The Fleet artifact ID returned by the APM source map upload
		// API. Used to track the resource across plan/apply cycles.
		id?: string

		// The name of the APM service that the source map applies to.
		// Must match the `service.name` field in APM events.
		service_name!: string

		// The version of the APM service that the source map applies to.
		// Must match the `service.version` field in APM events.
		service_version!: string

		// The Kibana space ID in which to manage the source map. Omit or
		// set to `"default"` for the default space. When set, all API
		// operations are prefixed with `/s/{space_id}`.
		space_id?: string

		// The source map content. Exactly one of `json`, `binary`, or
		// `file.path` must be set.
		sourcemap!: close({
			// The source map content as a base64-encoded string (standard
			// encoding). Exactly one of `json`, `binary`, or `file.path`
			// must be set. The value is write-only and is not read back from
			// the API.
			binary?: string

			// The source map content as a JSON string. Exactly one of `json`,
			// `binary`, or `file.path` must be set. The value is write-only
			// and is not read back from the API.
			json?: string

			// Upload a source map from a local file path.
			file?: close({
				// SHA256 hex digest of the uploaded sourcemap.
				checksum?: string

				// Absolute or relative path to the source map file on the local
				// filesystem.
				path!: string
			})
		})
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate
		// presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform
		// provider will point to, this must include the http(s) schema
		// and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
