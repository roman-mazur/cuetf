package res

#scaleway_rdb_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_rdb_acl")
	close({
		acl_rules!: matchN(1, [#acl_rules, [_, ...] & [...#acl_rules]])
		timeouts?: #timeouts
		id?:       string

		// Instance on which the ACL is applied
		instance_id!: string

		// The region you want to attach the resource to
		region?: string
	})

	#acl_rules: close({
		// Description of the rule
		description?: string

		// IPv4 address or range in CIDR notation (IPv6 is not supported
		// by the Scaleway API)
		ip!: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
