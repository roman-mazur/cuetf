package res

#scaleway_iam_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_iam_user")
	close({
		// The ID of the account root user associated with the iam user
		account_root_user_id?: string

		// The date and time of the creation of the iam user
		created_at?: string

		// Whether or not the iam user is editable
		deletable?: bool

		// The email of the user
		email!: string

		// The member's first name
		first_name?: string
		id?:         string

		// The date and time of last login of the iam user
		last_login_at?: string

		// The member's last name
		last_name?: string

		// The member's locale
		locale?: string

		// Defines whether the user is locked
		locked?: bool

		// Whether or not the MFA is enabled
		mfa?: bool

		// ID of organization the resource is associated to.
		organization_id?: string

		// The member's password for first access. Only one of `password`
		// or `password_wo` should be specified.
		password?: string

		// The member's password for first access in
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// mode. Only one of `password` or `password_wo` should be
		// specified. `password_wo` will not be set in the Terraform
		// state. To update the `password_wo`, you must also update the
		// `password_wo_version`.
		password_wo?: string

		// The version of the
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// password. To update the `password_wo`, you must also update
		// the `password_wo_version`.
		password_wo_version?: number

		// The member's phone number
		phone_number?: string

		// Whether or not to send an email containing the member's
		// password
		send_password_email?: bool

		// Whether or not to send a welcome email that includes onboarding
		// information
		send_welcome_email?: bool

		// The status of user invitation
		status?: string

		// The tags associated with the user
		tags?: [...string]

		// The type of the iam user
		type?: string

		// The date and time of the last update of the iam user
		updated_at?: string

		// The member's username
		username!: string
	})
}
