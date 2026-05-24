package res

#google_dataform_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataform_folder")
	close({
		timeouts?: #timeouts

		// Optional. The containing Folder resource name.
		// Format: 'projects/*/locations/*/folders/*' or
		// 'projects/*/locations/*/teamFolders/*'.
		containing_folder?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Required. The Folder's user-friendly name.
		display_name!: string

		// The unique identifier for the Folder.
		folder_id?: string
		id?:        string

		// The Folder's name.
		name?:    string
		project?: string

		// A reference to the region
		region!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
