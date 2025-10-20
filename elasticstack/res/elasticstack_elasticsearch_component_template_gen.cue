package res

import "list"

#elasticstack_elasticsearch_component_template: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_component_template")
	close({
		// Internal identifier of the resource
		id?: string

		// Optional user metadata about the component template.
		metadata?: string

		// Name of the component template to create.
		name!: string

		// Version number used to manage component templates externally.
		version?: number
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		template?: matchN(1, [#template, list.MaxItems(1) & [_, ...] & [...#template]])
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

	#template: close({
		alias?: matchN(1, [_#defs."/$defs/template/$defs/alias", [..._#defs."/$defs/template/$defs/alias"]])

		// Mapping for fields in the index. Should be specified as a JSON
		// object of field mappings. See the documentation
		// (https://www.elastic.co/guide/en/elasticsearch/reference/current/explicit-mapping.html)
		// for more details
		mappings?: string

		// Configuration options for the index. See the [index modules
		// settings
		// documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/index-modules.html#index-modules-settings)
		// for more details.
		settings?: string
	})

	_#defs: "/$defs/template/$defs/alias": close({
		// Query used to limit documents the alias can access.
		filter?: string

		// Value used to route indexing operations to a specific shard. If
		// specified, this overwrites the routing value for indexing
		// operations.
		index_routing?: string

		// If true, the alias is hidden.
		is_hidden?: bool

		// If true, the index is the write index for the alias.
		is_write_index?: bool

		// The alias name. Index alias names support date math. See the
		// [date math index names
		// documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/date-math-index-names.html)
		// for more details.
		name!: string

		// Value used to route indexing and search operations to a
		// specific shard.
		routing?: string

		// Value used to route search operations to a specific shard. If
		// specified, this overwrites the routing value for search
		// operations.
		search_routing?: string
	})
}
