package res

#google_data_catalog_entry_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_data_catalog_entry_group")
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

		// Entry group description, which can consist of several sentences
		// or paragraphs that describe entry group contents.
		description?: string

		// A short name to identify the entry group, for example,
		// "analytics data - jan 2011".
		display_name?: string

		// The id of the entry group to create. The id must begin with a
		// letter or underscore,
		// contain only English letters, numbers and underscores, and be
		// at most 64 characters.
		entry_group_id!: string
		id?:             string

		// The resource name of the entry group in URL format. Example:
		// projects/{project}/locations/{location}/entryGroups/{entryGroupId}
		name?:    string
		project?: string

		// EntryGroup location region.
		region?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
