package res

#google_service_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_service_account")
	close({
		// The account id that is used to generate the service account
		// email address and a stable unique id. It is unique within a
		// project, must be 6-30 characters long, and match the regular
		// expression [a-z]([-a-z0-9]*[a-z0-9]) to comply with RFC1035.
		// Changing this forces a new service account to be created.
		account_id!: string

		// If set to true, skip service account creation if a service
		// account with the same email already exists.
		create_ignore_already_exists?: bool

		// A text description of the service account. Must be less than or
		// equal to 256 UTF-8 bytes.
		description?: string

		// Whether the service account is disabled. Defaults to false
		disabled?: bool

		// The display name for the service account. Can be updated
		// without creating a new resource.
		display_name?: string

		// The e-mail address of the service account. This value should be
		// referenced from any google_iam_policy data sources that would
		// grant the service account privileges.
		email?: string

		// The Identity of the service account in the form
		// 'serviceAccount:{email}'. This value is often used to refer to
		// the service account in order to grant IAM permissions.
		member?: string

		// The fully-qualified name of the service account.
		name?:     string
		timeouts?: #timeouts
		id?:       string

		// The ID of the project that the service account will be created
		// in. Defaults to the provider project configuration.
		project?: string

		// The unique id of the service account.
		unique_id?: string
	})

	#timeouts: close({
		create?: string
	})
}
