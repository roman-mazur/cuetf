package data

#elasticstack_elasticsearch_query_ruleset: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_query_ruleset")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, [...#elasticsearch_connection]])

		// Internal identifier in the form `<cluster_uuid>/<ruleset_id>`.
		id?: string

		// Unique identifier of the query ruleset to look up.
		ruleset_id!: string

		// Ordered list of query rules for this ruleset.
		rules?: matchN(1, [close({
			// Actions taken when the rule matches.
			actions?: close({
				// Documents pinned or excluded.
				docs?: matchN(1, [close({
					// Unique document ID.
					"_id"?: string

					// Index containing the document.
					"_index"?: string
				}), [...close({
					// Unique document ID.
					"_id"?: string

					// Index containing the document.
					"_index"?: string
				})]])

				// Document IDs pinned or excluded.
				ids?: [...string]
			})

			// Match criteria for the rule.
			criteria?: matchN(1, [close({
				// Metadata field matched against.
				metadata?: string

				// Criteria type.
				type?: string

				// JSON-encoded array of string or numeric values.
				values?: string
			}), [...close({
				// Metadata field matched against.
				metadata?: string

				// Criteria type.
				type?: string

				// JSON-encoded array of string or numeric values.
				values?: string
			})]])

			// Relative priority within the ruleset.
			priority?: number

			// Unique identifier for the rule within the ruleset.
			rule_id?: string

			// Rule type: `pinned` or `exclude`.
			type?: string
		}), [...close({
			// Actions taken when the rule matches.
			actions?: close({
				// Documents pinned or excluded.
				docs?: matchN(1, [close({
					// Unique document ID.
					"_id"?: string

					// Index containing the document.
					"_index"?: string
				}), [...close({
					// Unique document ID.
					"_id"?: string

					// Index containing the document.
					"_index"?: string
				})]])

				// Document IDs pinned or excluded.
				ids?: [...string]
			})

			// Match criteria for the rule.
			criteria?: matchN(1, [close({
				// Metadata field matched against.
				metadata?: string

				// Criteria type.
				type?: string

				// JSON-encoded array of string or numeric values.
				values?: string
			}), [...close({
				// Metadata field matched against.
				metadata?: string

				// Criteria type.
				type?: string

				// JSON-encoded array of string or numeric values.
				values?: string
			})]])

			// Relative priority within the ruleset.
			priority?: number

			// Unique identifier for the rule within the ruleset.
			rule_id?: string

			// Rule type: `pinned` or `exclude`.
			type?: string
		})]])
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

		// PEM encoded certificate for client auth
		cert_data?: string

		// Path to a file containing the PEM encoded certificate for
		// client auth
		cert_file?: string

		// A list of endpoints where the terraform provider will point to,
		// this must include the http(s) schema and port number.
		endpoints?: [...string]

		// ES Client Authentication field to be used with the JWT token
		es_client_authentication?: string

		// A list of headers to be sent with each request to
		// Elasticsearch.
		headers?: [string]: string

		// Disable TLS certificate validation
		insecure?: bool

		// PEM encoded private key for client auth
		key_data?: string

		// Path to a file containing the PEM encoded private key for
		// client auth
		key_file?: string

		// Password to use for API authentication to Elasticsearch.
		password?: string

		// Username to use for API authentication to Elasticsearch.
		username?: string
	})
}
