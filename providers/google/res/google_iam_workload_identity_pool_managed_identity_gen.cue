package res

google_iam_workload_identity_pool_managed_identity: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_workload_identity_pool_managed_identity")
	close({
		attestation_rules?: matchN(1, [#attestation_rules, [...#attestation_rules]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A description of the managed identity. Cannot exceed 256 characters.
		description?: string

		// Whether the managed identity is disabled. If disabled, credentials may no longer be issued for
		// the identity, however existing credentials will still be accepted until they expire.
		disabled?: bool
		id?:       string

		// The resource name of the managed identity as
		// 'projects/{project_number}/locations/global/workloadIdentityPools/{workload_identity_pool_id}/namespaces/{workload_identity_pool_namespace_id}/managedIdentities/{workload_identity_pool_managed_identity_id}'.
		name?: string

		// The current state of the managed identity.
		// * 'ACTIVE': The managed identity is active.
		// * 'DELETED': The managed identity is soft-deleted. Soft-deleted managed identities are
		// permanently deleted after approximately 30 days. You can restore a soft-deleted managed
		// identity using UndeleteWorkloadIdentityPoolManagedIdentity. You cannot reuse the ID of a
		// soft-deleted managed identity until it is permanently deleted.
		state?:   string
		project?: string

		// The ID to use for the pool, which becomes the final component of the resource name. This
		// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
		// 'gcp-' is reserved for use by Google, and may not be specified.
		workload_identity_pool_id!: string

		// The ID to use for the managed identity. This value must:
		// * contain at most 63 characters
		// * contain only lowercase alphanumeric characters or '-'
		// * start with an alphanumeric character
		// * end with an alphanumeric character
		//
		// The prefix 'gcp-' will be reserved for future uses.
		workload_identity_pool_managed_identity_id!: string

		// The ID to use for the namespace. This value must:
		// * contain at most 63 characters
		// * contain only lowercase alphanumeric characters or '-'
		// * start with an alphanumeric character
		// * end with an alphanumeric character
		//
		// The prefix 'gcp-' will be reserved for future uses.
		workload_identity_pool_namespace_id!: string
	})

	#attestation_rules: close({
		// A single workload operating on Google Cloud. For example:
		// '//compute.googleapis.com/projects/123/uid/zones/us-central1-a/instances/12345678'.
		google_cloud_resource!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
