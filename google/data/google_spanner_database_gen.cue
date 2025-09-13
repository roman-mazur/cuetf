package data

#google_spanner_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_spanner_database")
	close({
		// The dialect of the Cloud Spanner Database.
		// If it is not provided, "GOOGLE_STANDARD_SQL" will be used.
		// Possible values: ["GOOGLE_STANDARD_SQL", "POSTGRESQL"]
		database_dialect?: string

		// An optional list of DDL statements to run inside the database.
		// Statements can create
		// tables, indexes, etc.
		//
		// During creation these statements execute atomically with the
		// creation of the database
		// and if there is an error in any statement, the database is not
		// created.
		//
		// Terraform does not perform drift detection on this field and
		// assumes that the values
		// recorded in state are accurate. Limited updates to this field
		// are supported, and
		// newly appended DDL statements can be executed in an update.
		// However, modifications
		// to prior statements will create a plan that marks the resource
		// for recreation.
		ddl?: [...string]

		// The default time zone for the database. The default time zone
		// must be a valid name
		// from the tz database. Default value is "America/Los_angeles".
		default_time_zone?: string

		// Whether Terraform will be prevented from destroying the
		// database. Defaults to true.
		// When a'terraform destroy' or 'terraform apply' would delete the
		// database,
		// the command will fail if this field is not set to false in
		// Terraform state.
		// When the field is set to true or unset in Terraform state, a
		// 'terraform apply'
		// or 'terraform destroy' that would delete the database will
		// fail.
		// When the field is set to false, deleting the database is
		// allowed.
		deletion_protection?: bool

		// Whether drop protection is enabled for this database. Defaults
		// to false.
		// Drop protection is different from
		// the "deletion_protection" attribute in the following ways:
		// (1) "deletion_protection" only protects the database from
		// deletions in Terraform.
		// whereas setting “enableDropProtection” to true protects the
		// database from deletions in all interfaces.
		// (2) Setting "enableDropProtection" to true also prevents the
		// deletion of the parent instance containing the database.
		// "deletion_protection" attribute does not provide protection
		// against the deletion of the parent instance.
		enable_drop_protection?: bool

		// Encryption configuration for the database
		encryption_config?: [...close({
			kms_key_name?: string
			kms_key_names?: [...string]
		})]
		id?: string

		// The instance to create the database on.
		instance!: string

		// A unique identifier for the database, which cannot be changed
		// after the
		// instance is created. Values are of the form
		// '[a-z][-_a-z0-9]*[a-z0-9]'.
		name!:    string
		project?: string

		// An explanation of the status of the database.
		state?: string

		// The retention period for the database. The retention period
		// must be between 1 hour
		// and 7 days, and can be specified in days, hours, minutes, or
		// seconds. For example,
		// the values 1d, 24h, 1440m, and 86400s are equivalent. Default
		// value is 1h.
		// If this property is used, you must avoid adding new DDL
		// statements to 'ddl' that
		// update the database's version_retention_period.
		version_retention_period?: string
	})
}
