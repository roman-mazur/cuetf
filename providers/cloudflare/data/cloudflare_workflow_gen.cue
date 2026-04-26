package data

#cloudflare_workflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_workflow")
	close({
		account_id?:    string
		class_name?:    string
		created_on?:    string
		id?:            string
		modified_on?:   string
		name?:          string
		script_name?:   string
		triggered_on?:  string
		workflow_name?: string
		filter?: close({
			// Allows filtering workflows` name.
			search?: string
		})
		instances?: close({
			complete?:          number
			errored?:           number
			paused?:            number
			queued?:            number
			running?:           number
			terminated?:        number
			waiting?:           number
			waiting_for_pause?: number
		})
	})
}
