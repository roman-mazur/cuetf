package data

#elasticstack_fleet_enrollment_tokens: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/elasticstack_fleet_enrollment_tokens")
	close({
		id?:        string
		policy_id?: string
		tokens?: matchN(1, [close({
			active?:     bool
			api_key?:    string
			api_key_id?: string
			created_at?: string
			key_id?:     string
			name?:       string
			policy_id?:  string
		}), [...close({
			active?:     bool
			api_key?:    string
			api_key_id?: string
			created_at?: string
			key_id?:     string
			name?:       string
			policy_id?:  string
		})]])
	})
}
