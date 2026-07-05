package res

google_compute_organization_security_policy_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_organization_security_policy_association")
	close({
		timeouts?: #timeouts

		// The resource that the security policy is attached to.
		attachment_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The display name of the security policy of the association.
		display_name?: string

		// A list of folders to exclude from the security policy.
		excluded_folders?: [...string]

		// A list of projects to exclude from the security policy.
		excluded_projects?: [...string]
		id?: string

		// The name for an association.
		name!: string

		// The security policy ID of the association.
		policy_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
