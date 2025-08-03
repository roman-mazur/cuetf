package data

#aws_identitystore_group_memberships: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_identitystore_group_memberships")
	close({
		group_id!: string
		group_memberships?: [...close({
			group_id?:          string
			identity_store_id?: string
			member_id?: close({
				user_id?: string
			})
			membership_id?: string
		})]
		identity_store_id!: string
		region?:            string
	})
}
