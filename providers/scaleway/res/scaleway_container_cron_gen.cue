package res

#scaleway_container_cron: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_container_cron")
	close({
		timeouts?: #timeouts

		// Cron arguments as json object to pass through during execution.
		args!: string

		// The Container ID to link with your trigger.
		container_id!: string
		id?:           string

		// Cron job name
		name?: string

		// The region you want to attach the resource to
		region?: string

		// Cron format string, e.g. 0 * * * * or @hourly, as schedule time
		// of its jobs to be created and executed.
		schedule!: string

		// Cron job status.
		status?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
