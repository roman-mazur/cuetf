package res

google_scc_notification_service_account: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_scc_notification_service_account")
	close({
		timeouts?: #timeouts

		// The email address of the Cloud Security Command Center Notification service account.
		email?: string
		id?:    string

		// The Identity of the Cloud Security Command Center Notification service
		// account in the form 'serviceAccount:{email}'. This value is often used to
		// refer to the service account in order to grant IAM permissions.
		member?:       string
		organization?: string
		project?:      string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
	})
}
