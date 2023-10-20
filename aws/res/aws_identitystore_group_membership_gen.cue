package res

#aws_identitystore_group_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_identitystore_group_membership")
	group_id:          string
	id?:               string
	identity_store_id: string
	member_id:         string
	membership_id?:    string
}
