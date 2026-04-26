package data

#elasticstack_kibana_spaces: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/elasticstack_kibana_spaces")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Generated ID for the spaces.
		id?: string

		// The list of spaces.
		spaces?: matchN(1, [close({
			// The hexadecimal color code used in the space avatar. By
			// default, the color is automatically generated from the space
			// name.
			color?: string

			// The description for the space.
			description?: string

			// The list of disabled features for the space. To get a list of
			// available feature IDs, use the Features API
			// (https://www.elastic.co/guide/en/kibana/master/features-api-get.html).
			disabled_features?: [...string]

			// Internal identifier of the resource.
			id?: string

			// The data-URL encoded image to display in the space avatar.
			image_url?: string

			// The initials shown in the space avatar. By default, the
			// initials are automatically generated from the space name.
			// Initials must be 1 or 2 characters.
			initials?: string

			// The display name for the space.
			name!: string

			// The solution view for the space. Valid options are `security`,
			// `oblt`, `es`, or `classic`.
			solution?: string
		}), [...close({
			// The hexadecimal color code used in the space avatar. By
			// default, the color is automatically generated from the space
			// name.
			color?: string

			// The description for the space.
			description?: string

			// The list of disabled features for the space. To get a list of
			// available feature IDs, use the Features API
			// (https://www.elastic.co/guide/en/kibana/master/features-api-get.html).
			disabled_features?: [...string]

			// Internal identifier of the resource.
			id?: string

			// The data-URL encoded image to display in the space avatar.
			image_url?: string

			// The initials shown in the space avatar. By default, the
			// initials are automatically generated from the space name.
			// Initials must be 1 or 2 characters.
			initials?: string

			// The display name for the space.
			name!: string

			// The solution view for the space. Valid options are `security`,
			// `oblt`, `es`, or `classic`.
			solution?: string
		})]])
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
