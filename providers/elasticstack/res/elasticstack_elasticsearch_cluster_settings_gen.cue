package res

import "list"

#elasticstack_elasticsearch_cluster_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_elasticsearch_cluster_settings")
	close({
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		persistent?: matchN(1, [#persistent, list.MaxItems(1) & [...#persistent]])
		transient?: matchN(1, [#transient, list.MaxItems(1) & [...#transient]])

		// Internal identifier of the resource
		id?: string
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

	#persistent: close({
		setting!: matchN(1, [_#defs."/$defs/persistent/$defs/setting", [_, ...] & [..._#defs."/$defs/persistent/$defs/setting"]])
	})

	#transient: close({
		setting!: matchN(1, [_#defs."/$defs/transient/$defs/setting", [_, ...] & [..._#defs."/$defs/transient/$defs/setting"]])
	})

	_#defs: "/$defs/persistent/$defs/setting": close({
		// The name of the setting to set and track.
		name!: string

		// The value of the setting to set and track.
		value?: string

		// The list of values to be set for the key, where the list is
		// required.
		value_list?: [...string]
	})

	_#defs: "/$defs/transient/$defs/setting": close({
		// The name of the setting to set and track.
		name!: string

		// The value of the setting to set and track.
		value?: string

		// The list of values to be set for the key, where the list is
		// required.
		value_list?: [...string]
	})
}
