package res

#aws_inspector2_member_association: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_inspector2_member_association")
	close({
		timeouts?:                   #timeouts
		account_id!:                 string
		delegated_admin_account_id?: string
		id?:                         string
		region?:                     string
		relationship_status?:        string
		updated_at?:                 string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
