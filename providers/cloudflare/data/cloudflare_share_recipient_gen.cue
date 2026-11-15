package data

cloudflare_share_recipient: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_share_recipient")
	close({
		// Account identifier.
		account_id!: string

		// The current state of the recipient relative to the share. The
		// `desired_association_status` (not exposed in the response) tracks the
		// target state set by the API; the background reconciliation workflow
		// drives `current_association_status` toward it.
		//
		// - `associating` — The recipient was recently added; the workflow is
		// pushing shared resources into the recipient account.
		// - `associated` — Shared resources have been successfully applied to
		// the recipient account.
		// - `disassociating` — The recipient was removed (via DELETE or PUT
		// replacement); the workflow is removing shared resources from the
		// recipient account.
		// - `disassociated` — Shared resources have been removed from the
		// recipient account. The recipient record remains in the database.
		// Available values: "associating", "associated", "disassociating", "disassociated".
		association_status?: string

		// When the object was created.
		created?: string

		// Share Recipient identifier tag.
		id?: string

		// Include resources in the response.
		include_resources?: bool

		// When the object was last modified.
		modified?: string

		// Share Recipient identifier tag.
		recipient_id!: string
		resources?: matchN(1, [close({
			// Error from the most recent attempt to apply the resource to the recipient.
			// Empty string when no error has been recorded.
			error?: string

			// Identifier assigned by the service that owns the shared resource.
			resource_id?: string

			// Resource version applied to the recipient, if reconciliation has occurred.
			resource_version?: number

			// Whether the error is terminal or will be continually retried.
			terminal?: bool
		}), [...close({
			// Error from the most recent attempt to apply the resource to the recipient.
			// Empty string when no error has been recorded.
			error?: string

			// Identifier assigned by the service that owns the shared resource.
			resource_id?: string

			// Resource version applied to the recipient, if reconciliation has occurred.
			resource_version?: number

			// Whether the error is terminal or will be continually retried.
			terminal?: bool
		})]])

		// Share identifier tag.
		share_id!: string
	})
}
