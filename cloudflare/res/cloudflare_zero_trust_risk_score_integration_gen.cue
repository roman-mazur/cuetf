package res

#cloudflare_zero_trust_risk_score_integration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_zero_trust_risk_score_integration")
	account_id!:       string
	active?:           bool
	id?:               string
	integration_type!: string
	reference_id?:     string
	tenant_url!:       string
	well_known_url?:   string
}
