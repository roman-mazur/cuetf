package data

cloudflare_share_recipients: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_share_recipients")
	close({
		// Account identifier.
		account_id!: string

		// Include resources in the response.
		include_resources?: bool

		// Max items to fetch, default: 1000
		max_items?: number

		// The items returned by the data source
		result?: matchN(1, [close({
			// Account identifier.
			account_id?: string
			resources?: matchN(1, [close({
				// Share Recipient error message.
				error?: string

				// Share Resource identifier.
				resource_id?: string

				// Resource Version.
				resource_version?: number

				// Whether the error is terminal or will be continually retried.
				terminal?: bool
			}), [...close({
				// Share Recipient error message.
				error?: string

				// Share Resource identifier.
				resource_id?: string

				// Resource Version.
				resource_version?: number

				// Whether the error is terminal or will be continually retried.
				terminal?: bool
			})]])

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

			// When the share was created.
			created?: string

			// Share Recipient identifier tag.
			id?: string

			// When the share was modified.
			modified?: string
		}), [...close({
			// Account identifier.
			account_id?: string
			resources?: matchN(1, [close({
				// Share Recipient error message.
				error?: string

				// Share Resource identifier.
				resource_id?: string

				// Resource Version.
				resource_version?: number

				// Whether the error is terminal or will be continually retried.
				terminal?: bool
			}), [...close({
				// Share Recipient error message.
				error?: string

				// Share Resource identifier.
				resource_id?: string

				// Resource Version.
				resource_version?: number

				// Whether the error is terminal or will be continually retried.
				terminal?: bool
			})]])

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

			// When the share was created.
			created?: string

			// Share Recipient identifier tag.
			id?: string

			// When the share was modified.
			modified?: string
		})]])

		// Share identifier tag.
		share_id!: string
	})
}
