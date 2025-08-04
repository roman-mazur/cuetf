package res

#cloudflare_workers_deployment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/cloudflare_workers_deployment")
	close({
		account_id!: string
		annotations?: close({
			workers_message?:      string
			workers_triggered_by?: string
		})
		author_email?: string
		created_on?:   string
		id?:           string
		script_name!:  string
		source?:       string
		strategy!:     string
		versions!: matchN(1, [close({
			percentage!: number
			version_id!: string
		}), [...close({
			percentage!: number
			version_id!: string
		})]])
	})
}
