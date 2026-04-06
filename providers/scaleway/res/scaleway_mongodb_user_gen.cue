package res

#scaleway_mongodb_user: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/scaleway_mongodb_user")
	close({
		roles?: matchN(1, [#roles, [...#roles]])
		timeouts?: #timeouts
		id?:       string

		// Instance on which the user is created
		instance_id!: string

		// MongoDB user name
		name!: string

		// MongoDB user password. Only one of `password` or `password_wo`
		// should be specified.
		password?: string

		// MongoDB user password in
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// mode. Only one of `password` or `password_wo` should be
		// specified. `password_wo` will not be set in the Terraform
		// state. To update the `password_wo`, you must also update the
		// `password_wo_version`.
		password_wo?: string

		// The version of the
		// [write-only](https://registry.terraform.io/providers/scaleway/scaleway/latest/docs/guides/using-write-only-arguments)
		// password. To update the `password_wo`, you must also update
		// the `password_wo_version`.
		password_wo_version?: number

		// The region you want to attach the resource to
		region?: string
	})

	#roles: close({
		// Apply role to any database
		any_database?: bool

		// Database name for the role
		database_name?: string

		// Role name (read, read_write, db_admin, sync)
		role!: string
	})

	#timeouts: close({
		create?:  string
		default?: string
		delete?:  string
		read?:    string
		update?:  string
	})
}
