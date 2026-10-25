package res

scaleway_mailbox_alias: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mailbox_alias")
	close({
		// Date and time of alias creation (RFC 3339 format)
		created_at?: string

		// Description of the alias. Omit the attribute to leave it empty; an empty string is not allowed.
		description?: string

		// Full email address of the alias (local_part@domain)
		email?: string

		// ID of the mailbox alias
		id?: string

		// Local part of the alias email address (the part before the @). Changing this forces a new alias.
		local_part!: string

		// ID of the mailbox to which this alias belongs
		mailbox_id!: string

		// Alias status (provisioning, ready, deleting, …)
		status?: string

		// Date and time of last update (RFC 3339 format)
		updated_at?: string
	})
}
