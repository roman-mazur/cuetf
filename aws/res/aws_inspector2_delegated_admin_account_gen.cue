package res

#aws_inspector2_delegated_admin_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_inspector2_delegated_admin_account")
	account_id!:          string
	id?:                  string
	relationship_status?: string
	timeouts?:            #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
