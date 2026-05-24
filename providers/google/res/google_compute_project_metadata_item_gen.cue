package res

#google_compute_project_metadata_item: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_project_metadata_item")
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
		id?:              string

		// The metadata key to set.
		key!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The value to set for the given metadata key.
		value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
