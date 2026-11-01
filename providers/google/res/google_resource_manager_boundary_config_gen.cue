package res

google_resource_manager_boundary_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_resource_manager_boundary_config")
	close({
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A checksum computed by the server based on the value of other fields. May
		// be sent on update requests to ensure the client has an up-to-date value
		// before proceeding.
		etag?: string
		id?:   string

		// The unique resource name of the BoundaryConfig, in the form
		// 'organizations/{organization_id}/boundaryConfig' or
		// 'folders/{folder_id}/boundaryConfig'.
		name?: string

		// The parent resource whose BoundaryConfig this is. Must be of the form
		// 'organizations/{organization_id}' or 'folders/{folder_id}'.
		parent!: string

		// The namespaced name of the partitioning tag key, in the form
		// '{parent_id}/{tag_key_short_name}', for example '123456789012/env'.
		// Boundaries under this parent filter projects on this tag key.
		//
		// The service also accepts the 'tagKeys/{numeric_id}' form here, but
		// Boundaries accept only the namespaced form and are validated against this
		// value verbatim. Storing the 'tagKeys/{numeric_id}' form therefore makes
		// every subsequent Boundary create fail with 'FAILED_PRECONDITION'. Always
		// use the namespaced form, for example
		// 'google_tags_tag_key.example.namespaced_name'.
		tag_key!: string

		// The most recent time this BoundaryConfig was modified.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
