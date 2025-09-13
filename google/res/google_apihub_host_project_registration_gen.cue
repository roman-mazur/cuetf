package res

#google_apihub_host_project_registration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apihub_host_project_registration")
	close({
		// Output only. The time at which the host project registration
		// was created.
		create_time?: string

		// Required. Immutable. Google cloud project name in the format:
		// "projects/abc" or "projects/123".
		// As input, project name with either project id or number are
		// accepted.
		// As output, this field will contain project number.
		gcp_project!: string

		// Required. The ID to use for the Host Project Registration,
		// which will become the
		// final component of the host project registration's resource
		// name. The ID
		// must be the same as the Google cloud project specified in the
		// host_project_registration.gcp_project field.
		host_project_registration_id!: string
		timeouts?:                     #timeouts

		// Part of 'parent'. See documentation of 'projectsId'.
		location!: string
		id?:       string

		// Identifier. The name of the host project registration.
		// Format:
		// "projects/{project}/locations/{location}/hostProjectRegistrations/{host_project_registration}".
		name?:    string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
