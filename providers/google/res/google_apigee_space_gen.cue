package res

#google_apigee_space: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_space")
	close({
		timeouts?: #timeouts

		// Create timestamp of the space.
		create_time?: string

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

		// The display name of the Space.
		display_name!: string
		id?:           string

		// Identifier. Id of the space. This field is used as the resource
		// name, and must follow AIP-122 guidelines.
		name?: string

		// The Apigee Organization associated with the Apigee Space, in
		// the format 'organizations/{{org_name}}'.
		org_id!: string

		// Space ID of the Apigee Space.
		space_id!: string

		// Last modified timestamp of the space.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
