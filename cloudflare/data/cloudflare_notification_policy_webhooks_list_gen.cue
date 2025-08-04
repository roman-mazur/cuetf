package data

#cloudflare_notification_policy_webhooks_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_notification_policy_webhooks_list")
	close({
		account_id!: string
		max_items?:  number
		result?: matchN(1, [close({
			created_at?:   string
			id?:           string
			last_failure?: string
			last_success?: string
			name?:         string
			secret?:       string
			type?:         string
			url?:          string
		}), [...close({
			created_at?:   string
			id?:           string
			last_failure?: string
			last_success?: string
			name?:         string
			secret?:       string
			type?:         string
			url?:          string
		})]])
	})
}
