package data

#google_storage_transfer_project_service_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_storage_transfer_project_service_account")
	close({
		email?:      string
		id?:         string
		member?:     string
		project?:    string
		subject_id?: string
	})
}
