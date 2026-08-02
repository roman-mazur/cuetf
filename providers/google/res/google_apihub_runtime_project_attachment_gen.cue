package res

google_apihub_runtime_project_attachment: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apihub_runtime_project_attachment")
	close({
		timeouts?: #timeouts

		// Output only. Create time.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// Part of 'parent'. See documentation of 'projectsId'.
		location!: string

		// Identifier. The resource name of a runtime project attachment.
		// Format:
		// "projects/{project}/locations/{location}/runtimeProjectAttachments/{runtime_project_attachment_id}"
		name?: string

		// Required. Immutable. Google cloud project name in the format: "projects/abc" or "projects/123".
		// As input, project name with either project id or number are accepted.
		// As output, this field will contain project number.
		runtime_project!: string
		project?:         string

		// The ID to use for the Runtime Project Attachment, which will become the
		// final component of the Runtime Project Attachment's name. The ID must be the same
		// as the project ID of the Google cloud project specified in the
		// runtime_project_attachment.runtime_project field.
		runtime_project_attachment_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
