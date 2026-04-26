package data

import "list"

#elasticstack_kibana_action_connector: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_action_connector")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, list.MaxItems(1) & [...#kibana_connection]])

		// The configuration for the connector. Configuration properties
		// vary depending on the connector type.
		config?: string

		// A UUID v1 or v4 randomly generated ID.
		connector_id?: string

		// The ID of the connector type, e.g. `.index`.
		connector_type_id?: string
		id?:                string

		// Indicates whether the connector type is deprecated.
		is_deprecated?: bool

		// Indicates whether secrets are missing for the connector.
		is_missing_secrets?: bool

		// Indicates whether it is a preconfigured connector.
		is_preconfigured?: bool

		// The name of the connector. While this name does not have to be
		// unique, a distinctive name can help you identify a connector.
		name!: string

		// An identifier for the space. If space_id is not provided, the
		// default space is used.
		space_id?: string
	})

	#kibana_connection: close({
		// API Key to use for authentication to Kibana
		api_key?: string

		// Bearer Token to use for authentication to Kibana
		bearer_token?: string

		// A list of paths to CA certificates to validate the certificate
		// presented by the Kibana server.
		ca_certs?: [...string]

		// A comma-separated list of endpoints where the terraform
		// provider will point to, this must include the http(s) schema
		// and port number.
		endpoints?: [...string]

		// Disable TLS certificate validation
		insecure?: bool

		// Password to use for API authentication to Kibana.
		password?: string

		// Username to use for API authentication to Kibana.
		username?: string
	})
}
