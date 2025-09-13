package res

#google_alloydb_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_alloydb_user")
	close({
		// Identifies the alloydb cluster. Must be in the format
		// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
		cluster!: string

		// List of database roles this database user has.
		database_roles?: [...string]

		// Name of the resource in the form of
		// projects/{project}/locations/{location}/clusters/{cluster}/users/{user}.
		name?: string
		id?:   string

		// Password for this database user.
		password?: string

		// The database role name of the user.
		user_id!:  string
		timeouts?: #timeouts

		// The type of this user. Possible values: ["ALLOYDB_BUILT_IN",
		// "ALLOYDB_IAM_USER"]
		user_type!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
