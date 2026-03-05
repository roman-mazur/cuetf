package res

#scaleway_tem_blocked_list: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_tem_blocked_list")
	close({
		// The ID of the domain affected by the blocklist.
		domain_id!: string

		// Email address to block.
		email!: string
		id?:    string

		// The project_id you want to attach the resource to
		project_id?: string

		// Reason for blocking the emails.
		reason?: string

		// The region you want to attach the resource to
		region?: string

		// Type of the blocked list. (mailbox_full or mailbox_not_found)
		type!: string
	})
}
