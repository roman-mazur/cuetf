package data

cloudflare_workflows: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workflows")
	close({
		account_id?: string

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			class_name?: string
			schedules?: matchN(1, [close({
				cron?:          string
				next_instance?: string
			}), [...close({
				cron?:          string
				next_instance?: string
			})]])
			created_on?: string
			id?:         string
			instances?: [string]: number
			modified_on?:  string
			name?:         string
			script_name?:  string
			triggered_on?: string
		}), [...close({
			class_name?: string
			schedules?: matchN(1, [close({
				cron?:          string
				next_instance?: string
			}), [...close({
				cron?:          string
				next_instance?: string
			})]])
			created_on?: string
			id?:         string
			instances?: [string]: number
			modified_on?:  string
			name?:         string
			script_name?:  string
			triggered_on?: string
		})]])

		// Allows filtering workflows` name.
		search?: string
	})
}
