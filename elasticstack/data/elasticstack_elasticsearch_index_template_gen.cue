package data

import "list"

#elasticstack_elasticsearch_index_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_index_template")
	close({
		// An ordered list of component template names.
		composed_of?: [...string]

		// If this object is included, the template is used to create data
		// streams and their backing indices. Supports an empty object.
		data_stream?: [...close({
			allow_custom_routing?: bool
			hidden?:               bool
		})]

		// Internal identifier of the resource
		id?: string

		// A list of component template names that are ignored if missing.
		ignore_missing_component_templates?: [...string]

		// Array of wildcard (*) expressions used to match the names of
		// data streams and indices during creation.
		index_patterns?: [...string]

		// Optional user metadata about the index template.
		metadata?: string

		// The name of the index template.
		name!: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])

		// Priority to determine index template precedence when a new data
		// stream or index is created.
		priority?: number

		// Template to be applied. It may optionally include an aliases,
		// mappings, lifecycle, or settings configuration.
		template?: [...close({
			alias?: [...close({
				filter?:         string
				index_routing?:  string
				is_hidden?:      bool
				is_write_index?: bool
				name?:           string
				routing?:        string
				search_routing?: string
			})]
			lifecycle?: [...close({
				data_retention?: string
			})]
			mappings?: string
			settings?: string
		})]

		// Version number used to manage index templates externally.
		version?: number
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
