package res

#cloudflare_workers_cron_trigger: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_cron_trigger")
	account_id!: string
	id?:         string
	schedules!: [...string]
	script_name!: string
}
