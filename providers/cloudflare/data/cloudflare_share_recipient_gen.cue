package data

cloudflare_share_recipient: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/cloudflare_share_recipient")
	close({
		// Account identifier.
		account_id!: string

		// Share Recipient association status.
		// Available values: "associating", "associated", "disassociating", "disassociated".
		association_status?: string

		// When the share was created.
		created?: string

		// Share Recipient identifier tag.
		id?: string

		// Include resources in the response.
		include_resources?: bool

		// When the share was modified.
		modified?: string

		// Share Recipient identifier tag.
		recipient_id!: string
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

		// Share identifier tag.
		share_id!: string
	})
}
