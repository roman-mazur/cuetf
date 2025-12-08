package data

#cloudflare_zero_trust_risk_behavior: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_zero_trust_risk_behavior")
	close({
		account_id!: string
		behaviors?: [string]: close({
			description?: string
			enabled?:     bool
			name?:        string

			// Available values: "low", "medium", "high".
			risk_level?: string
		})
	})
}
