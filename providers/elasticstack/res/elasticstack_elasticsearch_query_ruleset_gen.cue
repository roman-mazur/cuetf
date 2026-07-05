package res

elasticstack_elasticsearch_query_ruleset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_query_ruleset")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Internal identifier in the form `<cluster_uuid>/<ruleset_id>`.
		id?: string

		// Ordered list of query rules for this ruleset.
		rules!: matchN(1, [close({
			// Actions to take when the rule matches; exactly one of `ids` or `docs` must be set.
			actions!: close({
				// Documents to pin or exclude, specified by index and ID.
				docs?: matchN(1, [close({
					// Unique document ID.
					"_id"!: string

					// Index containing the document.
					"_index"!: string
				}), [...close({
					// Unique document ID.
					"_id"!: string

					// Index containing the document.
					"_index"!: string
				})]])

				// Document IDs to pin or exclude.
				ids?: [...string]
			})

			// Relative priority within the ruleset; omitted from the API when null.
			priority?: number

			// Match criteria for the rule; all criteria must match for the rule to apply.
			criteria!: matchN(1, [close({
				// Metadata field to match against; omitted from the API when null.
				metadata?: string

				// Criteria type (for example `exact`, `always`, `gt`).
				type!: string

				// JSON-encoded array of string or numeric values; required unless `type` is
				// `always`. Empty arrays are not allowed.
				values?: string
			}), [...close({
				// Metadata field to match against; omitted from the API when null.
				metadata?: string

				// Criteria type (for example `exact`, `always`, `gt`).
				type!: string

				// JSON-encoded array of string or numeric values; required unless `type` is
				// `always`. Empty arrays are not allowed.
				values?: string
			})]])

			// Unique identifier for the rule within the ruleset.
			rule_id!: string

			// Rule type: `pinned` or `exclude`.
			type!: string
		}), [...close({
			// Actions to take when the rule matches; exactly one of `ids` or `docs` must be set.
			actions!: close({
				// Documents to pin or exclude, specified by index and ID.
				docs?: matchN(1, [close({
					// Unique document ID.
					"_id"!: string

					// Index containing the document.
					"_index"!: string
				}), [...close({
					// Unique document ID.
					"_id"!: string

					// Index containing the document.
					"_index"!: string
				})]])

				// Document IDs to pin or exclude.
				ids?: [...string]
			})

			// Relative priority within the ruleset; omitted from the API when null.
			priority?: number

			// Match criteria for the rule; all criteria must match for the rule to apply.
			criteria!: matchN(1, [close({
				// Metadata field to match against; omitted from the API when null.
				metadata?: string

				// Criteria type (for example `exact`, `always`, `gt`).
				type!: string

				// JSON-encoded array of string or numeric values; required unless `type` is
				// `always`. Empty arrays are not allowed.
				values?: string
			}), [...close({
				// Metadata field to match against; omitted from the API when null.
				metadata?: string

				// Criteria type (for example `exact`, `always`, `gt`).
				type!: string

				// JSON-encoded array of string or numeric values; required unless `type` is
				// `always`. Empty arrays are not allowed.
				values?: string
			})]])

			// Unique identifier for the rule within the ruleset.
			rule_id!: string

			// Rule type: `pinned` or `exclude`.
			type!: string
		})]])

		// Unique identifier for the query ruleset.
		ruleset_id!: string
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
