package res

#scaleway_apple_silicon_runner: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_apple_silicon_runner")
	close({
		// The CI/CD provider for the runner. Must be either 'github' or
		// 'gitlab'
		ci_provider!: string

		// The error message of the runner
		error_message?: string
		timeouts?:      #timeouts

		// A list of labels that should be applied to the runner.
		labels?: [...string]
		id?: string

		// The name of the runner
		name?: string

		// The project_id you want to attach the resource to
		project_id?: string

		// The status of the runner
		status?: string

		// The token used to authenticate the runner to run
		token!: string

		// The URL of the runner to run
		url!: string

		// The zone you want to attach the resource to
		zone?: string
	})

	#timeouts: close({
		create?:  string
		default?: string
	})
}
