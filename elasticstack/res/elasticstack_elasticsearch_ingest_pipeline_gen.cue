package res

import "list"

#elasticstack_elasticsearch_ingest_pipeline: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_ingest_pipeline")
	close({
		// Description of the ingest pipeline.
		description?: string

		// Internal identifier of the resource
		id?: string

		// Optional user metadata about the index template.
		metadata?: string

		// The name of the ingest pipeline.
		name!: string

		// Processors to run immediately after a processor failure. Each
		// processor supports a processor-level `on_failure` value. If a
		// processor without an `on_failure` value fails, Elasticsearch
		// uses this pipeline-level parameter as a fallback. The
		// processors in this parameter run sequentially in the order
		// specified. Elasticsearch will not attempt to run the
		// pipeline’s remaining processors. See:
		// https://www.elastic.co/guide/en/elasticsearch/reference/current/processors.html.
		// Each record must be a valid JSON document
		on_failure?: [...string]

		// Processors used to perform transformations on documents before
		// indexing. Processors run sequentially in the order specified.
		// See:
		// https://www.elastic.co/guide/en/elasticsearch/reference/current/processors.html.
		// Each record must be a valid JSON document.
		processors!: [...string]
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
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
