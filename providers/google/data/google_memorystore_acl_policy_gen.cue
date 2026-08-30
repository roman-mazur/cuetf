package data

google_memorystore_acl_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_memorystore_acl_policy")
	close({
		// The logical name of the ACL policy in the customer project
		// with the following restrictions:
		//
		// * Must contain only lowercase letters, numbers, and hyphens.
		// * Must start with a letter.
		// * Must be between 1-63 characters.
		// * Must end with a number or a letter.
		// * Must be unique within the customer project / location
		acl_policy_id!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Etag of the ACL policy.
		etag?: string
		id?:   string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location?: string

		// Identifier. Full resource path of the ACL policy.
		name?:    string
		project?: string

		// The ACL rules within the ACL policy.
		rules?: [...close({
			rule?:     string
			username?: string
		})]

		// The state of the ACL policy.
		// Possible values:
		// ACTIVE
		// UPDATING
		// DELETING
		state?: string
	})
}
