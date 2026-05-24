package res

#google_backup_dr_management_server: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_backup_dr_management_server")
	close({
		networks?: matchN(1, [#networks, [...#networks]])
		timeouts?: #timeouts

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The location for the management server (management console)
		location!: string

		// The management console URI
		management_uri?: [...close({
			api?:    string
			web_ui?: string
		})]

		// The name of management server (management console)
		name!: string

		// The oauth2ClientId of management console.
		oauth2_client_id?: string
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
