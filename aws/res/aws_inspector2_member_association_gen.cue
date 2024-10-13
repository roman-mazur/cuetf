package res

#aws_inspector2_member_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_inspector2_member_association")
	account_id!:                 string
	delegated_admin_account_id?: string
	id?:                         string
	relationship_status?:        string
	updated_at?:                 string
	timeouts?:                   #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
