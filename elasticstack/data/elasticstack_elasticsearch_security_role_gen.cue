package data

import "list"

#elasticstack_elasticsearch_security_role: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_elasticsearch_security_role")
	close({
		// A list of application privilege entries.
		applications?: [...close({
			application?: string
			privileges?: [...string]
			resources?: [...string]
		})]

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

		// A list of indices permissions entries.
		indices?: [...close({
			allow_restricted_indices?: bool
			field_security?: [...close({
				except?: [...string]
				grant?: [...string]
			})]
			names?: [...string]
			privileges?: [...string]
			query?: string
		})]

		// Optional meta-data.
		metadata?: string
		elasticsearch_connection?: matchN(1, [#elasticsearch_connection, list.MaxItems(1) & [...#elasticsearch_connection]])

		// The name of the role.
		name!: string

		// A list of remote indices permissions entries. Remote indices
		// are effective for remote clusters configured with the API key
		// based model. They have no effect for remote clusters
		// configured with the certificate based model.
		remote_indices?: [...close({
			clusters?: [...string]
			field_security?: [...close({
				except?: [...string]
				grant?: [...string]
			})]
			names?: [...string]
			privileges?: [...string]
			query?: string
		})]

		// A list of users that the owners of this role can impersonate.
		run_as?: [...string]
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
