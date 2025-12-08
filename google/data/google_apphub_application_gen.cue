package data

#google_apphub_application: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_apphub_application")
	close({
		// Required. The Application identifier.
		application_id!: string

		// Consumer provided attributes.
		attributes?: [...close({
			business_owners?: [...close({
				display_name?: string
				email?:        string
			})]
			criticality?: [...close({
				type?: string
			})]
			developer_owners?: [...close({
				display_name?: string
				email?:        string
			})]
			environment?: [...close({
				type?: string
			})]
			operator_owners?: [...close({
				display_name?: string
				email?:        string
			})]
		})]

		// Output only. Create time.
		create_time?: string

		// Optional. User-defined description of an Application.
		description?: string

		// Optional. User-defined name for the Application.
		display_name?: string
		id?:           string

		// Part of 'parent'. See documentation of 'projectsId'.
		location!: string

		// Identifier. The resource name of an Application. Format:
		// "projects/{host-project-id}/locations/{location}/applications/{application-id}"
		name?:    string
		project!: string

		// Scope of an application.
		scope?: [...close({
			type?: string
		})]

		// Output only. Application state.
		// Possible values:
		// STATE_UNSPECIFIED
		// CREATING
		// ACTIVE
		// DELETING
		state?: string

		// Output only. A universally unique identifier (in UUID4 format)
		// for the 'Application'.
		uid?: string

		// Output only. Update time.
		update_time?: string
	})
}
