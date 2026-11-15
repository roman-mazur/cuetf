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

			// Jurisdiction where instances of this workflow run and store data. Set when
			// the workflow is created and cannot be changed.
			// Available values: "eu", "fedramp", "us".
			jurisdiction?: string
			schedules?: matchN(1, [close({
				cron?:          string
				next_instance?: string
			}), [...close({
				cron?:          string
				next_instance?: string
			})]])
			created_on?: string

			// Whether the bound Worker was deleted, leaving this Workflow inactive.
			script_deleted?: bool
			id?:             string
			instances?: [string]: number
			modified_on?:  string
			name?:         string
			script_name?:  string
			triggered_on?: string
		}), [...close({
			class_name?: string

			// Jurisdiction where instances of this workflow run and store data. Set when
			// the workflow is created and cannot be changed.
			// Available values: "eu", "fedramp", "us".
			jurisdiction?: string
			schedules?: matchN(1, [close({
				cron?:          string
				next_instance?: string
			}), [...close({
				cron?:          string
				next_instance?: string
			})]])
			created_on?: string

			// Whether the bound Worker was deleted, leaving this Workflow inactive.
			script_deleted?: bool
			id?:             string
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
