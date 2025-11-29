package res

#google_apphub_service_project_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apphub_service_project_attachment")
	close({
		// Output only. Create time.
		create_time?: string

		// "Identifier. The resource name of a ServiceProjectAttachment.
		// Format:\"projects/{host-project-id}/locations/global/serviceProjectAttachments/{service-project-id}.\""
		name?: string
		id?:   string

		// "Immutable. Service project name in the format:
		// \"projects/abc\"
		// or \"projects/123\". As input, project name with either project
		// id or number
		// are accepted. As output, this field will contain project
		// number."
		service_project?: string

		// Required. The service project attachment identifier must
		// contain the project_id of the service project specified in the
		// service_project_attachment.service_project field. Hint:
		// "projects/{project_id}"
		service_project_attachment_id!: string

		// ServiceProjectAttachment state.
		state?:    string
		project?:  string
		timeouts?: #timeouts

		// Output only. A globally unique identifier (in UUID4 format) for
		// the 'ServiceProjectAttachment'.
		uid?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
