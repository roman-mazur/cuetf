package res

#elasticstack_fleet_output: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/elasticstack_fleet_output")
	close({
		kibana_connection?: matchN(1, [#kibana_connection, [...#kibana_connection]])

		// Fingerprint of the Elasticsearch CA certificate.
		ca_sha256?: string

		// Fingerprint of trusted CA.
		ca_trusted_fingerprint?: string

		// Advanced YAML configuration. YAML settings here will be added
		// to the output section of each agent policy.
		config_yaml?: string

		// Make this output the default for agent integrations.
		default_integrations?: bool

		// Make this output the default for agent monitoring.
		default_monitoring?: bool

		// A list of hosts.
		hosts!: [...string]

		// The ID of this resource.
		id?: string

		// The name of the output.
		name!: string

		// Unique identifier of the output.
		output_id?: string

		// Service token for remote Elasticsearch outputs.
		service_token?: string

		// The Kibana space IDs where this output is available. When set,
		// the output will be created and managed within the specified
		// space. Note: The order of space IDs does not matter as this is
		// a set.
		space_ids?: [...string]

		// When type is remote_elasticsearch, whether Fleet synchronizes
		// integration assets to the remote cluster. Subscription and
		// version requirements apply per Elastic documentation.
		sync_integrations?: bool

		// When type is remote_elasticsearch, whether to sync uninstalled
		// integrations. Only meaningful when sync_integrations is
		// enabled.
		sync_uninstalled_integrations?: bool

		// The output type.
		type!: string

		// When type is remote_elasticsearch, whether agents using this
		// output send data to wired logs streams (preview in newer
		// stacks).
		write_to_logs_streams?: bool

		// Kafka-specific configuration.
		kafka?: close({
			// Authentication type for Kafka output.
			auth_type?: string

			// Kafka broker timeout.
			broker_timeout?: number

			// Kafka client ID.
			client_id?: string

			// Compression type for Kafka output.
			compression?: string

			// Compression level for Kafka output.
			compression_level?: number

			// Connection type for Kafka output.
			connection_type?: string

			// Key field for Kafka messages.
			key?: string

			// Partition strategy for Kafka output.
			partition?: string

			// Password for Kafka authentication.
			password?: string

			// Number of acknowledgments required for Kafka output.
			required_acks?: number

			// Timeout for Kafka output.
			timeout?: number

			// Kafka topic.
			topic?: string

			// Username for Kafka authentication.
			username?: string

			// Kafka version.
			version?: string

			// Hash configuration for Kafka partition.
			hash?: close({
				// Hash field.
				hash?: string

				// Use random hash.
				random?: bool
			})

			// Headers for Kafka messages.
			headers?: matchN(1, [close({
				// Header key.
				key!: string

				// Header value.
				value!: string
			}), [...close({
				// Header key.
				key!: string

				// Header value.
				value!: string
			})]])

			// Random configuration for Kafka partition.
			random?: close({
				// Number of events to group.
				group_events?: number
			})

			// Round robin configuration for Kafka partition.
			round_robin?: close({
				// Number of events to group.
				group_events?: number
			})

			// SASL configuration for Kafka authentication.
			sasl?: close({
				// SASL mechanism.
				mechanism?: string
			})
		})

		// SSL configuration.
		ssl?: close({
			// Client SSL certificate.
			certificate?: string

			// Server SSL certificate authorities.
			certificate_authorities?: [...string]

			// Client SSL certificate key.
			key?: string
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
