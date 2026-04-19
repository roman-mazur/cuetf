package res

#scaleway_function_cron: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_function_cron")
	close({
		// Functions arguments as json object to pass through during
		// execution.
		args!: string

		// The ID of the function to create a cron for.
		function_id!: string
		timeouts?:    #timeouts

		// The name of the cron job.
		name?: string
		id?:   string

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
