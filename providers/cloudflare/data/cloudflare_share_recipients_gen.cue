package data

#cloudflare_share_recipients: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_share_recipients")
	close({
		// Account identifier.
		account_id!: string

		// Include resources in the response.
		include_resources?: bool

		// Max items to fetch, default: 1000
		max_items?: number

		// Share identifier tag.
		share_id!: string

		// The items returned by the data source
		result?: matchN(1, [close({
			// Account identifier.
			account_id?: string

			// Share Recipient association status.
			// Available values: "associating", "associated",
			// "disassociating", "disassociated".
			association_status?: string

			// When the share was created.
			created?: string

			// Share Recipient identifier tag.
			id?: string

			// When the share was modified.
			modified?: string
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
		}), [...close({
			// Account identifier.
			account_id?: string

			// Share Recipient association status.
			// Available values: "associating", "associated",
			// "disassociating", "disassociated".
			association_status?: string

			// When the share was created.
			created?: string

			// Share Recipient identifier tag.
			id?: string

			// When the share was modified.
			modified?: string
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
		})]])
	})
}
