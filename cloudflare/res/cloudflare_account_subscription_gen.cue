package res

#cloudflare_account_subscription: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_account_subscription")
	close({
		account_id!: string
		currency?:   string
		rate_plan?: close({
			currency?:           string
			externally_managed?: bool
			id?:                 string
			is_contract?:        bool
			public_name?:        string
			scope?:              string
			sets?: [...string]
		})
		current_period_end?:   string
		current_period_start?: string
		frequency?:            string
		id?:                   string
		price?:                number
		state?:                string
	})
}
