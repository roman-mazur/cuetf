package data

#cloudflare_zero_trust_risk_scoring_integrations: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_zero_trust_risk_scoring_integrations")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			account_tag?:      string
			active?:           bool
			created_at?:       string
			id?:               string
			integration_type?: string
			reference_id?:     string
			tenant_url?:       string
			well_known_url?:   string
		}), [...close({
			account_tag?:      string
			active?:           bool
			created_at?:       string
			id?:               string
			integration_type?: string
			reference_id?:     string
			tenant_url?:       string
			well_known_url?:   string
		})]])
	})
}
