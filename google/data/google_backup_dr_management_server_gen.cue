package data

#google_backup_dr_management_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_backup_dr_management_server")
	close({
		// The location for the management server (management console)
		location!: string

		// The management console URI
		management_uri?: [...close({
			api?:    string
			web_ui?: string
		})]

		// The name of management server (management console)
		name?: string
		id?:   string

		// Network details to create management server (management
		// console).
		networks?: [...close({
			network?:      string
			peering_mode?: string
		})]

		// The oauth2ClientId of management console.
		oauth2_client_id?: string
		project?:          string

		// The type of management server (management console). Default
		// value: "BACKUP_RESTORE" Possible values: ["BACKUP_RESTORE"]
		type?: string
	})
}
