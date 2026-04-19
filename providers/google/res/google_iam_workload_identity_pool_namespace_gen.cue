package res

#google_iam_workload_identity_pool_namespace: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_workload_identity_pool_namespace")
	close({
		timeouts?: #timeouts

		// A description of the namespace. Cannot exceed 256 characters.
		description?: string

		// Whether the namespace is disabled. If disabled, credentials may
		// no longer be issued for
		// identities within this namespace, however existing credentials
		// will still be accepted until
		// they expire.
		disabled?: bool
		id?:       string

		// The resource name of the namespace as
		// 'projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/namespaces/{workload_identity_pool_namespace_id}'.
		name?: string

		// Defines the owner that is allowed to mutate this resource. If
		// present, this resource can only
		// be mutated by the owner.
		owner_service?: [...close({
			principal_subject?: string
		})]
		project?: string

		// The current state of the namespace.
		// * 'ACTIVE': The namespace is active.
		// * 'DELETED': The namespace is soft-deleted. Soft-deleted
		// namespaces are permanently deleted
		// after approximately 30 days. You can restore a soft-deleted
		// namespace using
		// UndeleteWorkloadIdentityPoolNamespace. You cannot reuse the ID
		// of a soft-deleted namespace
		// until it is permanently deleted.
		state?: string

		// The ID to use for the pool, which becomes the final component
		// of the resource name. This
		// value should be 4-32 characters, and may contain the characters
		// [a-z0-9-]. The prefix
		// 'gcp-' is reserved for use by Google, and may not be specified.
		workload_identity_pool_id!: string

		// The ID to use for the namespace. This value must:
		// * contain at most 63 characters
		// * contain only lowercase alphanumeric characters or '-'
		// * start with an alphanumeric character
		// * end with an alphanumeric character
		//
		//
		// The prefix 'gcp-' will be reserved for future uses.
		workload_identity_pool_namespace_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
