package data

#cloudflare_workers_cron_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_cron_trigger")
	close({
		account_id!: string
		schedules?: matchN(1, [close({
			created_on?:  string
			cron?:        string
			modified_on?: string
		}), [...close({
			created_on?:  string
			cron?:        string
			modified_on?: string
		})]])
		script_name!: string
	})
}
