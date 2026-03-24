package data

#scaleway_rdb_acl: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/scaleway_rdb_acl")
	close({
		// List of ACL rules to apply
		acl_rules?: [...close({
			description?: string
			ip?:          string
		})]
		id?: string

		// Instance on which the ACL is applied
		instance_id!: string

		// The region you want to attach the resource to
		region?: string
	})
}
