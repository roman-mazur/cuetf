package res

#google_bigquery_row_access_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_row_access_policy")
	close({
		// The time when this row access policy was created, in
		// milliseconds since
		// the epoch.
		creation_time?: string

		// The ID of the dataset containing this row access policy.
		dataset_id!: string

		// A SQL boolean expression that represents the rows defined by
		// this row
		// access policy, similar to the boolean expression in a WHERE
		// clause of a
		// SELECT query on a table.
		// References to other tables, routines, and temporary functions
		// are not
		// supported.
		//
		// Examples: region="EU"
		// date_field = CAST('2019-9-27' as DATE)
		// nullable_field is not NULL
		// numeric_field BETWEEN 1.0 AND 5.0
		filter_predicate!: string

		// Input only. The optional list of iam_member users or groups
		// that specifies the initial
		// members that the row-level access policy should be created
		// with.
		//
		// grantees types:
		// - "user:alice@example.com": An email address that represents a
		// specific
		// Google account.
		// - "serviceAccount:my-other-app@appspot.gserviceaccount.com": An
		// email
		// address that represents a service account.
		// - "group:admins@example.com": An email address that represents
		// a Google
		// group.
		// - "domain:example.com":The Google Workspace domain (primary)
		// that
		// represents all the users of that domain.
		// - "allAuthenticatedUsers": A special identifier that represents
		// all service
		// accounts and all users on the internet who have authenticated
		// with a Google
		// Account. This identifier includes accounts that aren't
		// connected to a
		// Google Workspace or Cloud Identity domain, such as personal
		// Gmail accounts.
		// Users who aren't authenticated, such as anonymous visitors,
		// aren't
		// included.
		// - "allUsers":A special identifier that represents anyone who is
		// on
		// the internet, including authenticated and unauthenticated
		// users. Because
		// BigQuery requires authentication before a user can access the
		// service,
		// allUsers includes only authenticated users.
		grantees?: [...string]
		id?: string

		// The time when this row access policy was last modified, in
		// milliseconds
		// since the epoch.
		last_modified_time?: string

		// The ID of the row access policy. The ID must contain only
		// letters (a-z, A-Z), numbers (0-9), or underscores (_). The
		// maximum
		// length is 256 characters.
		policy_id!: string
		timeouts?:  #timeouts
		project?:   string

		// The ID of the table containing this row access policy.
		table_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
