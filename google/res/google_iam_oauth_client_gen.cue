package res

#google_iam_oauth_client: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_iam_oauth_client")
	close({
		// Required. The list of OAuth grant types is allowed for the
		// OauthClient.
		allowed_grant_types!: [...string]

		// Required. The list of redirect uris that is allowed to redirect
		// back
		// when authorization process is completed.
		allowed_redirect_uris!: [...string]

		// Required. The list of scopes that the OauthClient is allowed to
		// request during
		// OAuth flows.
		//
		// The following scopes are supported:
		//
		// * 'https://www.googleapis.com/auth/cloud-platform': See, edit,
		// configure,
		// and delete your Google Cloud data and see the email address for
		// your Google
		// Account.
		// * 'openid': The OAuth client can associate you with your
		// personal
		// information on Google Cloud.
		// * 'email': The OAuth client can read a federated identity's
		// email address.
		// * 'groups': The OAuth client can read a federated identity's
		// groups.
		allowed_scopes!: [...string]

		// Output only. The system-generated OauthClient id.
		client_id?: string

		// Immutable. The type of OauthClient. Either public or private.
		// For private clients, the client secret can be managed using the
		// dedicated
		// OauthClientCredential resource.
		// Possible values:
		// CLIENT_TYPE_UNSPECIFIED
		// PUBLIC_CLIENT
		// CONFIDENTIAL_CLIENT
		client_type?: string

		// A user-specified description of the OauthClient.
		//
		// Cannot exceed 256 characters.
		description?: string

		// Whether the OauthClient is disabled. You cannot use a disabled
		// OAuth
		// client.
		disabled?: bool

		// A user-specified display name of the OauthClient.
		//
		// Cannot exceed 32 characters.
		display_name?: string

		// Time after which the OauthClient will be permanently purged and
		// cannot
		// be recovered.
		expire_time?: string
		timeouts?:    #timeouts
		id?:          string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Immutable. Identifier. The resource name of the OauthClient.
		//
		// Format:'projects/{project}/locations/{location}/oauthClients/{oauth_client}'.
		name?: string

		// Required. The ID to use for the OauthClient, which becomes the
		// final component of
		// the resource name. This value should be a string of 6 to 63
		// lowercase
		// letters, digits, or hyphens. It must start with a letter, and
		// cannot have a
		// trailing hyphen. The prefix 'gcp-' is reserved for use by
		// Google, and may
		// not be specified.
		oauth_client_id!: string
		project?:         string

		// The state of the OauthClient.
		// Possible values:
		// STATE_UNSPECIFIED
		// ACTIVE
		// DELETED
		state?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
