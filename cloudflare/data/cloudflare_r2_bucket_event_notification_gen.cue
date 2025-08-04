package data

#cloudflare_r2_bucket_event_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket_event_notification")
	close({
		account_id!:  string
		bucket_name!: string
		queue_id!:    string
		queue_name?:  string
		rules?: matchN(1, [close({
			actions?: [...string]
			created_at?:  string
			description?: string
			prefix?:      string
			rule_id?:     string
			suffix?:      string
		}), [...close({
			actions?: [...string]
			created_at?:  string
			description?: string
			prefix?:      string
			rule_id?:     string
			suffix?:      string
		})]])
	})
}
