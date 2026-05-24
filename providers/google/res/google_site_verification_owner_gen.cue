package res

#google_site_verification_owner: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_site_verification_owner")
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

		// The email address of the owner.
		email!: string
		id?:    string

		// The id of the Web Resource to add this owner to, in the form
		// "webResource/<web-resource-id>".
		web_resource_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
