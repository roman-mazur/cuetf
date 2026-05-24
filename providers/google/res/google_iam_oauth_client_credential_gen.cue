package res

#google_iam_oauth_client_credential: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_oauth_client_credential")
	close({
		timeouts?: #timeouts

		// The system-generated OAuth client secret.
		//
		// The client secret must be stored securely. If the client secret
		// is
		// leaked, you must delete and re-create the client credential. To
		// learn
		// more, see [OAuth client and credential security risks and
		// mitigations](https://cloud.google.com/iam/docs/workforce-oauth-app#security)
		client_secret?: string

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

		// Whether the OauthClientCredential is disabled. You cannot use a
		// disabled OauthClientCredential.
		disabled?: bool

		// A user-specified display name of the OauthClientCredential.
		//
		// Cannot exceed 32 characters.
		display_name?: string
		id?:           string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Immutable. Identifier. The resource name of the
		// OauthClientCredential.
		//
		// Format:
		// 'projects/{project}/locations/{location}/oauthClients/{oauth_client}/credentials/{credential}'
		name?: string

		// Required. The ID to use for the OauthClientCredential, which
		// becomes the
		// final component of the resource name. This value should be 4-32
		// characters,
		// and may contain the characters [a-z0-9-]. The prefix 'gcp-' is
		// reserved for use by Google, and may not be specified.
		oauth_client_credential_id!: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		oauthclient!: string
		project?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
