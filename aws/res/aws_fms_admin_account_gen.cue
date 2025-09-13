package res

#aws_fms_admin_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fms_admin_account")
	close({
		timeouts?:   #timeouts
		account_id?: string
		id?:         string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
