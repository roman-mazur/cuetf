package res

#cloudflare_worker_cron_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/cloudflare_worker_cron_trigger")
	account_id!: string
	id?:         string
	schedules!: [...string]
	script_name!: string
}
