package res

#google_project_default_service_accounts: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_project_default_service_accounts")
	close({
		// The action to be performed in the default service accounts.
		// Valid values are: DEPRIVILEGE, DELETE, DISABLE.
		// Note that DEPRIVILEGE action will ignore the REVERT
		// configuration in the restore_policy.
		action!: string

		// The project ID where service accounts are created.
		project!: string
		id?:      string

		// The action to be performed in the default service accounts on
		// the resource destroy.
		// Valid values are NONE, REVERT and REVERT_AND_IGNORE_FAILURE. It
		// is applied for any action but in the DEPRIVILEGE.
		restore_policy?: string
		timeouts?:       #timeouts

		// The Service Accounts changed by this resource. It is used for
		// revert the action on the destroy.
		service_accounts?: [string]: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
