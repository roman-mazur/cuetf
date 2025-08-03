package res

#aws_directory_service_shared_directory_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_directory_service_shared_directory_accepter")
	close({
		id?:                  string
		timeouts?:            #timeouts
		method?:              string
		notes?:               string
		owner_account_id?:    string
		owner_directory_id?:  string
		region?:              string
		shared_directory_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
