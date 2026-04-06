package res

#aws_workmail_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_workmail_user")
	close({
		// City where the user is located.
		city?: string

		// Company associated with the user.
		company?: string

		// Country where the user is located.
		country?: string

		// Department associated with the user.
		department?: string

		// Timestamp when the user was disabled from WorkMail use.
		disabled_date?: string

		// Display name of the user.
		display_name!: string

		// Primary email address used to register the user with WorkMail.
		email!: string

		// Timestamp when the user was enabled for WorkMail use.
		enabled_date?: string

		// First name of the user.
		first_name?: string

		// Whether to hide the user from the global address list.
		hidden_from_global_address_list?: bool

		// Identity store ID from IAM Identity Center associated with the
		// user.
		identity_provider_identity_store_id?: string

		// User ID from IAM Identity Center associated with the user.
		identity_provider_user_id?: string

		// Initials of the user.
		initials?: string

		// Job title of the user.
		job_title?: string

		// Last name of the user.
		last_name?: string

		// Timestamp when the mailbox was removed for the user.
		mailbox_deprovisioned_date?: string

		// Timestamp when the mailbox was created for the user.
		mailbox_provisioned_date?: string

		// Username of the user.
		name!: string

		// Office where the user is located.
		office?: string

		// Identifier of the WorkMail organization where the user is
		// managed.
		organization_id!: string

		// Password to set for the user.
		password?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string

		// Current WorkMail state of the user.
		state?: string

		// Street address of the user.
		street?: string

		// Telephone number of the user.
		telephone?: string

		// Identifier of the user.
		user_id?: string

		// Role assigned to the user.
		user_role?: string

		// ZIP or postal code of the user.
		zip_code?: string
	})
}
