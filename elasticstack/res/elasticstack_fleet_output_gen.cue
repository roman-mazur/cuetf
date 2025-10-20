package res

#elasticstack_fleet_output: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_output")
	close({
		// Fingerprint of the Elasticsearch CA certificate.
		ca_sha256?: string

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

			// Key field for Kafka messages.
			key?: string

			// Partition strategy for Kafka output.
			partition?: string

			// Random configuration for Kafka partition.
			random?: close({
				// Number of events to group.
				group_events?: number
			})

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

			// Kafka version.
			version?: string
		})

		// Fingerprint of trusted CA.
		ca_trusted_fingerprint?: string

		// SSL configuration.
		ssl?: close({
			// Client SSL certificate.
			certificate!: string

			// Server SSL certificate authorities.
			certificate_authorities?: [...string]

			// Client SSL certificate key.
			key!: string
		})

		// Advanced YAML configuration. YAML settings here will be added
		// to the output section of each agent policy.
		config_yaml?: string

		// Make this output the default for agent integrations.
		default_integrations?: bool

		// Make this output the default for agent monitoring.
		default_monitoring?: bool

		// A list of hosts.
		hosts?: [...string]

		// The ID of this resource.
		id?: string

		// The name of the output.
		name!: string

		// Unique identifier of the output.
		output_id?: string

		// The output type.
		type!: string
	})
}
