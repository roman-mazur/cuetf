package res

scaleway_mailbox_domain: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mailbox_domain")
	close({
		// Date and time of domain creation (RFC 3339 format)
		created_at?: string

		// DNS records that must be configured in your DNS zone to validate the domain
		dns_records?: matchN(1, [close({
			// Fully qualified DNS name for this record
			dns_name?: string

			// DNS record type (e.g. TXT, MX, CNAME)
			dns_type?: string

			// DNS record value to set
			dns_value?: string

			// Error detail when the record is invalid
			error?: string

			// Requirement level (required, recommended, optional)
			level?: string

			// Validation status of this record
			status?: string
		}), [...close({
			// Fully qualified DNS name for this record
			dns_name?: string

			// DNS record type (e.g. TXT, MX, CNAME)
			dns_type?: string

			// DNS record value to set
			dns_value?: string

			// Error detail when the record is invalid
			error?: string

			// Requirement level (required, recommended, optional)
			level?: string

			// Validation status of this record
			status?: string
		})]])

		// ID of the mailbox domain
		id?: string

		// IMAP server URL for email clients
		imap_url?: string

		// Number of mailboxes provisioned on this domain
		mailbox_total_count?: number

		// Fully qualified domain name (e.g. mail.example.com)
		name!: string

		// POP3 server URL for email clients
		pop3_url?: string

		// ID of the project the domain belongs to
		project_id?: string

		// SMTP server URL for email clients
		smtp_url?: string

		// Domain status: creating, waiting_validation, validating, validation_failed,
		// provisioning, ready, deleting
		status?: string

		// Date and time of last update (RFC 3339 format)
		updated_at?: string

		// URL of the webmail interface
		webmail_url?: string
	})
}
