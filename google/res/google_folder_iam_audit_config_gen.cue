package res

#google_folder_iam_audit_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_folder_iam_audit_config")
	close({
		// The etag of iam policy
		etag?: string

		// Service which will be enabled for audit logging. The special
		// value allServices covers all services.
		service!: string
		folder!:  string
		id?:      string
		audit_log_config!: matchN(1, [#audit_log_config, [_, ...] & [...#audit_log_config]])
	})

	#audit_log_config: close({
		// Identities that do not cause logging for this type of
		// permission. Each entry can have one of the following
		// values:user:{emailid}: An email address that represents a
		// specific Google account. For example, alice@gmail.com or
		// joe@example.com. serviceAccount:{emailid}: An email address
		// that represents a service account. For example,
		// my-other-app@appspot.gserviceaccount.com. group:{emailid}: An
		// email address that represents a Google group. For example,
		// admins@example.com. domain:{domain}: A G Suite domain
		// (primary, instead of alias) name that represents all the users
		// of that domain. For example, google.com or example.com.
		exempted_members?: [...string]

		// Permission type for which logging is to be configured. Must be
		// one of DATA_READ, DATA_WRITE, or ADMIN_READ.
		log_type!: string
	})
}
