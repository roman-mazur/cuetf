package res

cloudflare_workflow: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/cloudflare_workflow")
	close({
		account_id!: string
		class_name!: string
		created_on?: string

		// Default retention applied to instances of this version when they do not set their own retention.
		default_retention?: close({
			// Specifies the duration in milliseconds or as a string like '5 minutes'.
			error_retention?: _

			// Specifies the duration in milliseconds or as a string like '5 minutes'.
			success_retention?: _
		})
		id?: string
		instances?: close({
			complete?:          number
			errored?:           number
			paused?:            number
			queued?:            number
			rolling_back?:      number
			running?:           number
			terminated?:        number
			waiting?:           number
			waiting_for_pause?: number
		})
		is_deleted?: number
		limits?: close({
			steps?: number
		})
		modified_on?: string
		name?:        string
		schedules?: matchN(1, [close({
			cron!: string
		}), [...close({
			cron!: string
		})]])
		script_name!:        string
		terminator_running?: number
		triggered_on?:       string
		version_id?:         string
		workflow_name!:      string
	})
}
