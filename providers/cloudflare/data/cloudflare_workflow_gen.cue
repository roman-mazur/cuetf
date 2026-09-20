package data

cloudflare_workflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workflow")
	close({
		account_id?: string
		class_name?: string
		created_on?: string
		filter?: close({
			// Allows filtering workflows` name.
			search?: string
		})
		id?: string
		instances?: [string]: number
		modified_on?: string
		name?:        string
		schedules?: matchN(1, [close({
			cron?:          string
			next_instance?: string
		}), [...close({
			cron?:          string
			next_instance?: string
		})]])
		script_name?:   string
		triggered_on?:  string
		workflow_name?: string
	})
}
