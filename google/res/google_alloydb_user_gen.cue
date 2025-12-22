package res

#google_alloydb_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_alloydb_user")
	close({
		// Identifies the alloydb cluster. Must be in the format
		// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
		cluster!: string

		// List of database roles this database user has.
		database_roles?: [...string]

		// Name of the resource in the form of
		// projects/{project}/locations/{location}/clusters/{cluster}/users/{user}.
		name?: string

		// Password for this database user.
		password?: string

		// Password for this database user.
		password_wo?: string
		id?:          string

		// Triggers update of 'password_wo' write-only. Increment this
		// value when an update to 'password_wo' is needed. For more info
		// see [updating write-only
		// arguments](/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
		password_wo_version?: string

		// The database role name of the user.
		user_id!: string

		// The type of this user. Possible values: ["ALLOYDB_BUILT_IN",
		// "ALLOYDB_IAM_USER"]
		user_type!: string
		timeouts?:  #timeouts
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
