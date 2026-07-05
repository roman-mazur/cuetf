package res

elasticstack_elasticsearch_ml_trained_model_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_ml_trained_model_deployment")
	close({
		// A unique identifier for the deployment of the model. Defaults to the value of `model_id`.
		deployment_id?: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Adaptive allocations configuration. When enabled, the number of allocations
		// is set based on the current load. Cannot be set when `number_of_allocations`
		// is configured.
		adaptive_allocations?: close({
			// If `true`, adaptive allocations is enabled.
			enabled!: bool

			// Specifies the maximum number of allocations to scale to.
			max_number_of_allocations?: number

			// Specifies the minimum number of allocations to scale to.
			min_number_of_allocations?: number
		})

		// The detailed allocation state of the deployment.
		allocation_status?: string

		// When `true`, passes `force=true` to the Stop Deployment API on destroy.
		force_stop?: bool

		// Internal identifier of the resource in the format `<cluster_uuid>/<deployment_id>`.
		id?: string

		// The unique identifier of the trained model to deploy.
		model_id!: string

		// The number of model allocations on each node where the model is deployed.
		// Cannot be set when `adaptive_allocations` is configured.
		number_of_allocations?: number

		// The deployment priority. Valid values are `low` and `normal`.
		priority?: string

		// Specifies the number of inference requests that are allowed in the queue.
		queue_capacity?: number

		// The overall state of the deployment.
		state?: string

		// The raw JSON of the trained model stats for this deployment.
		stats_json?: string

		// Sets the number of threads used by each model allocation during inference.
		threads_per_allocation?: number
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

		// Specifies the amount of time to wait for the model to deploy. This is the
		// server-side start timeout.
		api_timeout?: string

		// Specifies the allocation status to wait for before returning. Valid values
		// are `starting`, `started`, and `fully_allocated`. Defaults to
		// `fully_allocated`.
		wait_for?: string
	})

	#elasticsearch_connection: close({
		// API Key to use for authentication to Elasticsearch
		api_key?: string

		// Bearer Token to use for authentication to Elasticsearch
		bearer_token?: string

		// PEM-encoded custom Certificate Authority certificate
		ca_data?: string

		// Path to a custom Certificate Authority certificate
		ca_file?: string

		// SHA-256 hex fingerprint (64 hexadecimal characters, no colons or separators)
		// of the server TLS certificate used to pin the connection instead of a full
		// CA chain
		ca_fingerprint?: string

		// PEM encoded certificate for client auth
		cert_data?: string

		// Path to a file containing the PEM encoded certificate for client auth
		cert_file?: string

		// A list of endpoints where the terraform provider will point to, this must
		// include the http(s) schema and port number.
		endpoints?: [...string]

		// ES Client Authentication field to be used with the JWT token
		es_client_authentication?: string

		// A list of headers to be sent with each request to Elasticsearch.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// PEM encoded private key for client auth
		key_data?: string

		// Path to a file containing the PEM encoded private key for client auth
		key_file?: string

		// Password to use for API authentication to Elasticsearch.
		password?: string

		// Username to use for API authentication to Elasticsearch.
		username?: string
	})
}
