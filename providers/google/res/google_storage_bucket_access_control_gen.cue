package res

google_storage_bucket_access_control: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_storage_bucket_access_control")
	close({
		timeouts?: #timeouts

		// The name of the bucket.
		bucket!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The domain associated with the entity.
		domain?: string

		// The email address associated with the entity.
		email?: string

		// The entity holding the permission, in one of the following forms:
		// user-userId
		// user-email
		// group-groupId
		// group-email
		// domain-domain
		// project-team-projectId
		// allUsers
		// allAuthenticatedUsers
		// Examples:
		// The user liz@example.com would be user-liz@example.com.
		// The group example@googlegroups.com would be
		// group-example@googlegroups.com.
		// To refer to all members of the Google Apps for Business domain
		// example.com, the entity would be domain-example.com.
		entity!: string
		id?:     string

		// The access permission for the entity. Possible values: ["OWNER", "READER", "WRITER"]
		role?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
