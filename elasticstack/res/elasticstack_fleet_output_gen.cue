package res

#elasticstack_fleet_output: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_output")
	close({
		ca_sha256?:              string
		ca_trusted_fingerprint?: string
		config_yaml?:            string
		default_integrations?:   bool
		default_monitoring?:     bool
		hosts?: [...string]
		id?: string
		ssl?: matchN(1, [#ssl, [...#ssl]])
		name!:      string
		output_id?: string
		type!:      string
	})

	#ssl: close({
		certificate!: string
		certificate_authorities?: [...string]
		key!: string
	})
}
