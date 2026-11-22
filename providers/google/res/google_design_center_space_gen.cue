package res

google_design_center_space: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_design_center_space")
	close({
		timeouts?: #timeouts

		// Space creation timestamp.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description for the space.
		description?: string

		// Display name for the space.
		display_name?: string

		// Flag to enable Google opinionated shared templates.
		enable_gcp_shared_templates?: bool

		// An existing Google Cloud Storage bucket that you want to use instead of
		// creating a new bucket during Application Design Center setup. If not
		// provided, a default bucket is created during setup. The bucket must exist
		// in the same project as the space. Format: {bucket_name}
		gcs_bucket?: string
		id?:         string

		// The location of the space.
		location!: string

		// Identifier. The space name.
		name?: string

		// The ID of the space.
		space_id!: string
		project?:  string

		// Input only. Resource Manager tags to bind to the space at creation, as a
		// map of namespaced tag keys to tag value short names, for example
		// '{"123/environment" = "production"}'. For more information, see
		// https://cloud.google.com/resource-manager/docs/tags/tags-overview.
		tags?: [string]: string

		// Space update timestamp.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
