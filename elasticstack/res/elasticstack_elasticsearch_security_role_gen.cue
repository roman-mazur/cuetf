package res

import "list"

#elasticstack_elasticsearch_security_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_security_role")
	close({
		// A list of cluster privileges. These privileges define the
		// cluster level actions that users with this role are able to
		// execute.
		cluster?: [...string]

		// The description of the role.
		description?: string

		// An object defining global privileges.
		global?: string

		// Internal identifier of the resource
		id?: string
		applications?: matchN(1, [#applications, [...#applications]])

		// Optional meta-data.
		metadata?: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])
		indices?: matchN(1, [#indices, [...#indices]])
		remote_indices?: matchN(1, [#remote_indices, [...#remote_indices]])

		// The name of the role.
		name!: string

		// A list of users that the owners of this role can impersonate.
		run_as?: [...string]
	})

	#applications: close({
		// The name of the application to which this entry applies.
		application!: string

		// A list of strings, where each element is the name of an
		// application privilege or action.
		privileges!: [...string]

		// A list resources to which the privileges are applied.
		resources!: [...string]
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

	#indices: close({
		// Include matching restricted indices in names parameter. Usage
		// is strongly discouraged as it can grant unrestricted
		// operations on critical data, make the entire system unstable
		// or leak sensitive information.
		allow_restricted_indices?: bool

		// A list of indices (or index name patterns) to which the
		// permissions in this entry apply.
		names!: [...string]

		// The index level privileges that the owners of the role have on
		// the specified indices.
		privileges!: [...string]
		field_security?: matchN(1, [_#defs."/$defs/indices/$defs/field_security", list.MaxItems(1) & [..._#defs."/$defs/indices/$defs/field_security"]])

		// A search query that defines the documents the owners of the
		// role have read access to.
		query?: string
	})

	#remote_indices: close({
		// A list of cluster aliases to which the permissions in this
		// entry apply.
		clusters!: [...string]

		// A list of indices (or index name patterns) to which the
		// permissions in this entry apply.
		names!: [...string]

		// The index level privileges that the owners of the role have on
		// the specified indices.
		privileges!: [...string]
		field_security?: matchN(1, [_#defs."/$defs/remote_indices/$defs/field_security", list.MaxItems(1) & [..._#defs."/$defs/remote_indices/$defs/field_security"]])

		// A search query that defines the documents the owners of the
		// role have read access to.
		query?: string
	})

	_#defs: "/$defs/indices/$defs/field_security": close({
		// List of the fields to which the grants will not be applied.
		except?: [...string]

		// List of the fields to grant the access to.
		grant?: [...string]
	})

	_#defs: "/$defs/remote_indices/$defs/field_security": close({
		// List of the fields to which the grants will not be applied.
		except?: [...string]

		// List of the fields to grant the access to.
		grant?: [...string]
	})
}
