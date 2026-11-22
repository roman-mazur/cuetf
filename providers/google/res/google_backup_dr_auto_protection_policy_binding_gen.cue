package res

google_backup_dr_auto_protection_policy_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_backup_dr_auto_protection_policy_binding")
	close({
		timeouts?: #timeouts

		// The ID of the binding. This becomes the final component of the binding's resource name.
		auto_protection_policy_binding_id!: string

		// The ID of the auto protection policy to bind.
		auto_protection_policy_id!: string

		// A summary of the last run of the job that applies the policy to matching
		// resources within the binding's scope.
		binding_evaluation_summary?: [...close({
			failed_resource_count?:    string
			matching_resource_count?:  string
			protected_resource_count?: string
		})]

		// The time when the binding was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The etag of the binding, used for optimistic concurrency control.
		etag?: string
		id?:   string

		// The location of the auto protection policy.
		location!: string

		// The resource name of the binding, in the format
		// 'projects/{project}/locations/{location}/autoProtectionPolicies/{auto_protection_policy_id}/bindings/{auto_protection_policy_binding_id}'.
		name?: string

		// The container that the policy is applied to, in the format 'projects/{project}'.
		scope!:   string
		project?: string

		// The current state of the binding.
		// Possible values are 'CREATING', 'ACTIVE', and 'DELETION_INITIATED'.
		state?: string

		// The time when the binding was last updated.
		update_time?: string

		// Whether Terraform should wait for the binding and all associated background resource
		// unprotection operations to be completely deleted before returning. Setting
		// 'wait_for_delete = true' will block the Terraform script/execution until all resources
		// are unprotected and the binding is fully removed.
		wait_for_delete?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
