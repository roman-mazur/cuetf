package data

#google_access_approval_folder_service_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_access_approval_folder_service_account")
	close({
		account_email?: string
		folder_id!:     string
		id?:            string
		name?:          string
	})
}
