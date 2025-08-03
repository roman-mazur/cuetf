package res

#aws_account_alternate_contact: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_account_alternate_contact")
	close({
		account_id?:             string
		timeouts?:               #timeouts
		alternate_contact_type!: string
		email_address!:          string
		id?:                     string
		name!:                   string
		phone_number!:           string
		title!:                  string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
