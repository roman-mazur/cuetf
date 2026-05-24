package res

#google_dataform_team_folder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_dataform_team_folder")
	close({
		timeouts?: #timeouts

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

		// Required. The TeamFolder's user-friendly name.
		display_name!: string
		id?:           string

		// The TeamFolder's name.
		name?:    string
		project?: string

		// A reference to the region
		region!: string

		// The unique identifier for the TeamFolder.
		teamfolder_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
