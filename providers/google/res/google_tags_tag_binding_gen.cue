package res

google_tags_tag_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_tags_tag_binding")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The generated id for the TagBinding. This is a string of the form
		// 'tagBindings/{full-resource-name}/{tag-value-name}' or
		// 'tagBindings/{full-resource-name}/{tag-key-name}'
		name?: string

		// The full resource name of the resource the TagValue is bound to. E.g.
		// //cloudresourcemanager.googleapis.com/projects/123
		parent!: string

		// The TagValue of the TagBinding. Must be either in id format
		// 'tagValues/{tag-value-id}', or namespaced format
		// '{parent-id}/{tag-key-short-name}/{tag-value-short-name}'.
		tag_value!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
