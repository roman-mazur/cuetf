package res

google_identity_platform_tenant_default_supported_idp_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_identity_platform_tenant_default_supported_idp_config")
	close({
		timeouts?: #timeouts

		// OAuth client ID
		client_id!: string

		// OAuth client secret
		client_secret!: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// If this IDP allows the user to sign in
		enabled?: bool
		id?:      string

		// ID of the IDP. Possible values include:
		//
		// * 'apple.com'
		//
		// * 'facebook.com'
		//
		// * 'gc.apple.com'
		//
		// * 'github.com'
		//
		// * 'google.com'
		//
		// * 'linkedin.com'
		//
		// * 'microsoft.com'
		//
		// * 'playgames.google.com'
		//
		// * 'twitter.com'
		//
		// * 'yahoo.com'
		idp_id!: string

		// The name of the default supported IDP config resource
		name?: string

		// The name of the tenant where this DefaultSupportedIdpConfig resource exists
		tenant!:  string
		project?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
