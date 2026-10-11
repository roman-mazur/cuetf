package data

scaleway_mailbox: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_mailbox")
	close({
		// Date and time of mailbox creation (RFC 3339 format)
		created_at?: string

		// Scheduled deletion date when status is deletion_scheduled (RFC 3339 format)
		deletion_scheduled_at?: string

		// ID of the mailbox domain
		domain_id?: string

		// Full email address of the mailbox. Exactly one of `mailbox_id` or `email` must be specified.
		email?: string

		// ID of the mailbox
		id?: string

		// Local part of the email address
		local_part?: string

		// UUID of the mailbox. Exactly one of `mailbox_id` or `email` must be specified.
		mailbox_id?: string

		// Next subscription renewal period
		next_subscription_period?: string

		// Date when the next subscription period starts (RFC 3339 format)
		next_subscription_period_starts_at?: string

		// Mailbox status
		status?: string

		// Billing subscription period
		subscription_period?: string

		// Start date of the current subscription period (RFC 3339 format)
		subscription_period_started_at?: string

		// Date and time of last update (RFC 3339 format)
		updated_at?: string
	})
}
