package data

import "list"

#elasticstack_elasticsearch_info: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_elasticsearch_info")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])

		// Name of the cluster, based on the Cluster name setting setting.
		cluster_name?: string

		// Unique identifier for the cluster.
		cluster_uuid?: string
		id?:           string

		// Name of the node.
		name?: string

		// Elasticsearh tag line.
		tagline?: string

		// Contains statistics about the number of nodes selected by the
		// request's node filters.
		version?: [...close({
			build_date?:                          string
			build_flavor?:                        string
			build_hash?:                          string
			build_snapshot?:                      bool
			build_type?:                          string
			lucene_version?:                      string
			minimum_index_compatibility_version?: string
			minimum_wire_compatibility_version?:  string
			number?:                              string
		})]
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
