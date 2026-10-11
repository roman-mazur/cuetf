package res

scaleway_mailbox: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mailbox")
	close({
		// Date and time of mailbox creation (RFC 3339 format)
		created_at?: string

		// Date of the unrecoverable mailbox deletion when status is deletion_scheduled (RFC 3339 format)
		deletion_scheduled_at?: string

		// ID of the mailbox domain to which this mailbox belongs
		domain_id!: string

		// Full email address of the mailbox (local_part@domain)
		email?: string

		// ID of the mailbox
		id?: string

		// Local part of the email address (the part before the @). Changing this forces a new mailbox.
		local_part!: string

		// Next subscription renewal period (monthly, yearly, or canceled)
		next_subscription_period?: string

		// Date when the next subscription period starts (RFC 3339 format)
		next_subscription_period_starts_at?: string

		// Password for the mailbox. Only one of `password` or `password_wo` should be specified.
		password?: string

		// Password in
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// mode. Only one of `password` or `password_wo` should be specified. To update
		// `password_wo`, also update `password_wo_version`.
		password_wo?: string

		// Version of the write-only password. Bump this value together with
		// `password_wo` to rotate the password.
		password_wo_version?: number

		// Mailbox status
		status?: string

		// Billing subscription period: monthly or yearly. Updating this value changes
		// the next renewal period.
		subscription_period!: string

		// Start date of the current subscription period (RFC 3339 format)
		subscription_period_started_at?: string

		// Date and time of last update (RFC 3339 format)
		updated_at?: string
	})
}
