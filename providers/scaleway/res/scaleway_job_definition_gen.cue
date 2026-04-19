package res

import "list"

#scaleway_job_definition: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_job_definition")
	close({
		// Job arguments in list format. Overrides the default arguments
		// defined in the job image.
		args?: [...string]

		// CPU limit of the job
		cpu_limit!: number

		// The job description
		description?: string
		cron?: matchN(1, [#cron, list.MaxItems(1) & [...#cron]])

		// Environment variables to pass to the job
		env?: [string]: string
		id?: string

		// Image URI to use for the job
		image_uri!: string

		// Local storage capacity of the job in MiB
		local_storage_capacity!: number
		secret_reference?: matchN(1, [#secret_reference, [...#secret_reference]])

		// Memory limit of the job
		memory_limit!: number

		// The job name
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The region you want to attach the resource to
		region?: string

		// Command to use for the job (in list format). Overrides the
		// default command defined in the job image.
		startup_command?: [...string]

		// Timeout for the job in seconds
		timeout?: string
	})

	#cron: close({
		// UNIX cron schedule to run job
		schedule!: string

		// Timezone for the cron schedule, in tz database format (e.g.,
		// 'Europe/Paris').
		timezone!: string
	})

	#secret_reference: close({
		// An environment variable containing the secret value.
		environment?: string

		// The absolute file path where the secret will be mounted.
		file?: string

		// The secret unique identifier, it could be formatted as
		// region/UUID or UUID. In case the region is passed, it must be
		// the same as the job definition.
		secret_id!: string

		// The secret reference UUID
		secret_reference_id?: string

		// The secret version.
		secret_version?: string
	})
}
