package res

#google_compute_shared_vpc_host_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_shared_vpc_host_project")
	close({
		timeouts?: #timeouts
		id?:       string

		// The ID of the project that will serve as a Shared VPC host
		// project
		project!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
