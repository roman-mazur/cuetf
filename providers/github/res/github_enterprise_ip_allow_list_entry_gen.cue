package res

#github_enterprise_ip_allow_list_entry: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/github_enterprise_ip_allow_list_entry")
	close({
		// Timestamp of when the entry was created.
		created_at?: string

		// The slug of the enterprise to apply the IP allow list entry to.
		enterprise_slug!: string
		id?:              string

		// An IP address or range of IP addresses in CIDR notation.
		ip!: string

		// Whether the entry is currently active.
		is_active?: bool

		// An optional name for the IP allow list entry.
		name?: string

		// Timestamp of when the entry was last updated.
		updated_at?: string
	})
}
