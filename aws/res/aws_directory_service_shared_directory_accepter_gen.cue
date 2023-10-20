package res

#aws_directory_service_shared_directory_accepter: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://rmazur.io/cuetf/schema/aws_directory_service_shared_directory_accepter")
	id?:                 string
	method?:             string
	notes?:              string
	owner_account_id?:   string
	owner_directory_id?: string
	shared_directory_id: string
	timeouts?:           #timeouts

	#timeouts: {
		create?: string
		delete?: string
	}
}
