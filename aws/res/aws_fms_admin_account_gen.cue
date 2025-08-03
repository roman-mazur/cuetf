package res

#aws_fms_admin_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_fms_admin_account")
	close({
		account_id?: string
		id?:         string
		timeouts?:   #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
