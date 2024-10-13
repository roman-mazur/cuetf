package res

#elasticstack_fleet_output: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/elasticstack_fleet_output")
	ca_sha256?:              string
	ca_trusted_fingerprint?: string
	config_yaml?:            string
	default_integrations?:   bool
	default_monitoring?:     bool
	hosts?: [...string]
	id?:        string
	name!:      string
	output_id?: string
	type!:      string
	ssl?: #ssl | [...#ssl]

	#ssl: {
		certificate!: string
		certificate_authorities?: [...string]
		key!: string
	}
}
