package res

#google_sql_provision_script: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_sql_provision_script")
	close({
		// The name of the database to which Terraform connects. Changing
		// this forces Terraform to connect to the new database and run
		// the script. This argument is
		// required for Postgres instances. It's optional for MySQL, but
		// some of your queries may require
		// a database. You can create and use a database in the script or
		// explicitly reference a
		// google_sql_database.
		database?: string

		// The deletion policy for the resources created by the script.
		// The default is "ABANDON".
		// It must be "ABANDON" to allow Terraform to abandon the
		// resources. If you want to delete resources, add statements
		// in the script such as "drop … if exists".
		deletion_policy?: string

		// The description of the provision script.
		description?: string
		id?:          string

		// The name of the Cloud SQL instance. Changing this forces the
		// script to be run on the new instance.
		instance!: string

		// The ID of the project in which the resource belongs. If it is
		// not provided, the provider project is used.
		project?: string

		// The SQL script to provision database resources. Its execution
		// time limit is 30 s.
		// Changing this forces the script to be rerun. Make sure the
		// script is idempotent.
		// You can use statements like "create if not exists …" or
		// "if not exists (select …) then … end if" to prevent
		// existence-related errors. If it's not
		// possible to make a statement idempotent, you can run it once
		// and then remove it from this script.
		script!: string
	})
}
