package res

#google_backup_dr_management_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_backup_dr_management_server")
	close({
		// The location for the management server (management console)
		location!: string
		id?:       string

		// The management console URI
		management_uri?: [...close({
			api?:    string
			web_ui?: string
		})]

		// The name of management server (management console)
		name!: string
		networks?: matchN(1, [#networks, [...#networks]])

		// The oauth2ClientId of management console.
		oauth2_client_id?: string
		timeouts?:         #timeouts
		project?:          string

		// The type of management server (management console). Default
		// value: "BACKUP_RESTORE" Possible values: ["BACKUP_RESTORE"]
		type?: string
	})

	#networks: close({
		// Network with format
		// 'projects/{{project_id}}/global/networks/{{network_id}}'
		network!: string

		// Type of Network peeringMode Default value:
		// "PRIVATE_SERVICE_ACCESS" Possible values:
		// ["PRIVATE_SERVICE_ACCESS"]
		peering_mode?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
