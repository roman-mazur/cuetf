package res

#elasticstack_fleet_output: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_output")
	close({
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
		hosts?: [...string]

		// The ID of this resource.
		id?: string
		ssl?: matchN(1, [#ssl, [...#ssl]])

		// The name of the output.
		name!: string

		// Unique identifier of the output.
		output_id?: string

		// The output type.
		type!: string
	})

	#ssl: close({
		// Client SSL certificate.
		certificate!: string

		// Server SSL certificate authorities.
		certificate_authorities?: [...string]

		// Client SSL certificate key.
		key!: string
	})
}
