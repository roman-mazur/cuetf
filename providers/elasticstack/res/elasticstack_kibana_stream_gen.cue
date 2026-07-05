package res

elasticstack_kibana_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_stream")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Configuration for a classic stream. Classic streams adopt pre-existing
		// Elasticsearch data streams. They cannot be created or deleted via this
		// resource — use `terraform import` to manage them. Mutually exclusive with
		// `wired_config` and `query_config`.
		classic_config?: close({
			// Failure store configuration as a JSON object. When not set, defaults to
			// `{"disabled":{}}` and the server value is stored in state.
			failure_store_json?: string

			// Field override definitions as a JSON object. Maps field names to override
			// configurations for classic stream field handling.
			field_overrides_json?: string

			// Number of replica shards for the underlying index.
			index_number_of_replicas?: number

			// Number of primary shards for the underlying index.
			index_number_of_shards?: number

			// How often to refresh the index (e.g. `1s`, `5s`, `-1` to disable).
			index_refresh_interval?: string

			// Lifecycle configuration as a JSON object. Supports DSL, ILM, or inherited
			// lifecycle. When not set, the previous state value is preserved on update.
			lifecycle_json?: string

			// Processing pipeline steps in streamlang format. Each element is a
			// JSON-encoded step object. Steps are applied in order during ingest.
			processing_steps?: [...string]
		})

		// List of dashboard IDs to link to this stream.
		dashboards?: [...string]

		// ES|QL queries attached to this stream.
		queries?: matchN(1, [close({
			// A human-readable description for the query.
			description?: string

			// The ES|QL query string.
			esql!: string

			// Optional list of evidence field names for the query.
			evidence?: [...string]

			// A unique identifier for the query.
			id!: string

			// Optional severity score for the query (0–100).
			severity_score?: number

			// A human-readable title for the query.
			title!: string
		}), [...close({
			// A human-readable description for the query.
			description?: string

			// The ES|QL query string.
			esql!: string

			// Optional list of evidence field names for the query.
			evidence?: [...string]

			// A unique identifier for the query.
			id!: string

			// Optional severity score for the query (0–100).
			severity_score?: number

			// A human-readable title for the query.
			title!: string
		})]])

		// A human-readable description of the stream.
		description?: string

		// Configuration for a query stream. Query streams are virtual streams defined
		// by an ES|QL query. Mutually exclusive with `wired_config` and
		// `classic_config`.
		query_config?: close({
			// The ES|QL query that defines this virtual stream. The `FROM` clause must
			// reference the parent stream using the `$.{parent}` data view notation, where
			// `{parent}` is the stream name with its last `.segment` removed. For example,
			// a query stream named `logs.otel.errors` must use `FROM $.logs.otel | ...`.
			esql!: string

			// The Kibana data view name for this query stream. Automatically set to
			// `$.{name}` (the stream name prefixed with `$.`) — this is enforced by the
			// API and cannot be changed.
			view?: string
		})

		// Generated composite identifier for the stream (`space_id/name`).
		id?: string
		timeouts?: close({
			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			create?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Setting a timeout for a Delete operation is only
			// applicable if changes are saved into state before the destroy operation
			// occurs.
			delete?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours). Read operations occur during any refresh or
			// planning operation when refresh is enabled.
			read?: string

			// A string that can be [parsed as a
			// duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and
			// unit suffixes, such as "30s" or "2h45m". Valid time units are "s" (seconds),
			// "m" (minutes), "h" (hours).
			update?: string
		})

		// The name of the stream. Stream names follow Elasticsearch data stream naming
		// conventions (e.g. `logs.nginx`).
		name!: string

		// Configuration for a wired stream. Wired streams are fully managed data
		// streams with explicit field mappings and routing rules. Mutually exclusive
		// with `classic_config` and `query_config`.
		wired_config?: close({
			// Failure store configuration as a JSON object. Controls where failed ingest
			// documents are stored. Supports `{"inherit": {}}`, `{"disabled": {}}`, or a
			// lifecycle-enabled configuration. When not set, defaults to `{"disabled":{}}`
			// and the server value is stored in state.
			failure_store_json?: string

			// Field type mappings as a JSON object. Maps field names to their type
			// definitions (e.g. `{"host.name": {"type": "keyword"}}`). Wired streams
			// enforce these mappings across routed data.
			fields_json?: string

			// Number of replica shards for the underlying index.
			index_number_of_replicas?: number

			// Number of primary shards for the underlying index.
			index_number_of_shards?: number

			// How often to refresh the index (e.g. `1s`, `5s`, `-1` to disable). Accepts a
			// duration string or `-1`.
			index_refresh_interval?: string

			// Lifecycle configuration as a JSON object. Supports DSL (`{"dsl":
			// {"data_retention": "30d"}}`), ILM (`{"ilm": {"policy": "my-policy"}}`), or
			// inherited lifecycle (`{"inherit": {}}`). When not set, the previous state
			// value is preserved on update; on first create defaults to `{"inherit":{}}`
			// and the server value is stored in state.
			lifecycle_json?: string

			// Processing pipeline steps in streamlang format. Each element is a
			// JSON-encoded step object (e.g. `jsonencode({ action = "grok", from =
			// "message", patterns = ["..."] })`). Steps are applied in order during
			// ingest. Storing each step as a separate list element gives granular per-step
			// diffs in Terraform plans. Conditions and nested steps are supported by
			// embedding the full streamlang object as JSON.
			processing_steps?: [...string]

			// Routing rules as a JSON array. Each rule defines a destination child stream
			// and a filter condition (`where`) that determines which documents are routed
			// there. Example: `[{"destination": "logs.nginx.errors", "where": {"field":
			// "http.response.status_code", "gte": 400}}]`.
			routing_json?: string
		})

		// An identifier for the space. If not provided, the default space is used.
		space_id?: string
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform provider will point
		// to, this must include the http(s) schema and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
