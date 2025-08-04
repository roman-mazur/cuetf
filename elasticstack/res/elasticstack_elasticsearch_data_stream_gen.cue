package res

import "list"

#elasticstack_elasticsearch_data_stream: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_data_stream")
	close({
		// Current generation for the data stream.
		generation?: number

		// If `true`, the data stream is hidden.
		hidden?: bool

		// Internal identifier of the resource
		id?: string

		// Name of the current ILM lifecycle policy in the stream’s
		// matching index template.
		ilm_policy?: string

		// Array of objects containing information about the data stream’s
		// backing indices. The last item in this array contains
		// information about the stream’s current write index.
		indices?: [...close({
			index_name?: string
			index_uuid?: string
		})]

		// Custom metadata for the stream, copied from the _meta object of
		// the stream’s matching index template.
		metadata?: string

		// Name of the data stream to create.
		name!: string

		// If `true`, the data stream is created and managed by
		// cross-cluster replication and the local cluster can not write
		// into this data stream or change its mappings.
		replicated?: bool
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])

		// Health status of the data stream.
		status?: string

		// If `true`, the data stream is created and managed by an Elastic
		// stack component and cannot be modified through normal user
		// interaction.
		system?: bool

		// Name of the index template used to create the data stream’s
		// backing indices.
		template?: string

		// Contains information about the data stream’s @timestamp field.
		timestamp_field?: string
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
