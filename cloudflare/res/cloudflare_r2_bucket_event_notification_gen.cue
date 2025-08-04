package res

#cloudflare_r2_bucket_event_notification: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_r2_bucket_event_notification")
	close({
		account_id!: string
		rules?: matchN(1, [close({
			actions!: [...string]
			description?: string
			prefix?:      string
			suffix?:      string
		}), [...close({
			actions!: [...string]
			description?: string
			prefix?:      string
			suffix?:      string
		})]])
		bucket_name!:  string
		jurisdiction?: string
		queue_id!:     string
		queue_name?:   string
	})
}
