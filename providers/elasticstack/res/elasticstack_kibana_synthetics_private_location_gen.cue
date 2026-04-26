package res

#elasticstack_kibana_synthetics_private_location: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_kibana_synthetics_private_location")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// The ID of the agent policy associated with the private
		// location. To create a private location for synthetics monitor
		// you need to create an agent policy in fleet and use its
		// agentPolicyId
		agent_policy_id!: string

		// Generated id for the private location. For monitor setup please
		// use private location label.
		id?: string

		// A label for the private location, used as unique identifier
		label!: string

		// Kibana space. The space ID that is part of the Kibana URL when
		// inside the space. Space IDs are limited to lowercase
		// alphanumeric, underscore, and hyphen characters (a-z, 0-9, _,
		// and -). You cannot change the ID using the update operation.
		//
		// Using a **non-default** space (any non-empty `space_id`)
		// requires **Elastic Stack 9.4.0-SNAPSHOT** or later. Leave
		// unset or empty to use the default space on older stacks.
		space_id?: string

		// An array of tags to categorize the private location.
		tags?: [...string]

		// Geographic coordinates (WGS84) for the location
		geo?: close({
			// The latitude of the location.
			lat!: number

			// The longitude of the location.
			lon!: number
		})
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
