package res

#google_compute_shared_vpc_service_project: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_shared_vpc_service_project")
	close({
		// The deletion policy for the shared VPC service. Setting ABANDON
		// allows the resource
		// to be abandoned rather than deleted. Possible values are:
		// "ABANDON".
		deletion_policy?: string

		// The ID of a host project to associate.
		host_project!: string
		id?:           string
		timeouts?:     #timeouts

		// The ID of the project that will serve as a Shared VPC service
		// project.
		service_project!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
