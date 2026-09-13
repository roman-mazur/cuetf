package res

google_biglake_hive_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_hive_database")
	close({
		timeouts?: #timeouts

		// Hive catalog where the database to create is located.
		catalog!: string

		// Output only. The creation time of the database.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Description of the database.
		description?: string
		id?:          string

		// Cloud Storage location path where the database exists. If unspecified, the
		// database will be stored in the catalog location.
		// Format: gs://bucket/path/to/database
		location_uri?: string

		// Database to create.
		name!: string

		// Additional parameters associated with the database.
		parameters?: [string]: string

		// Output only. The update time of the database.
		update_time?: string
		project?:     string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
