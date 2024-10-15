package res

#cloudflare_zero_trust_risk_behavior: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_risk_behavior")
	account_id!: string
	behavior?: #behavior | [...#behavior]

	#behavior: {
		enabled!:    bool
		name!:       string
		risk_level!: string
	}
}
