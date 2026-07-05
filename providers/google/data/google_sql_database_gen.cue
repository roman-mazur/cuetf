package data

google_sql_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/data/google_sql_database")
	close({
		// The charset value. See MySQL's
		// [Supported Character Sets and
		// Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
		// and Postgres' [Character Set Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)
		// for more details and supported values. Postgres databases only support
		// a value of 'UTF8' at creation time.
		charset?: string

		// The collation value. See MySQL's
		// [Supported Character Sets and
		// Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
		// and Postgres' [Collation Support](https://www.postgresql.org/docs/9.6/static/collation.html)
		// for more details and supported values. Postgres databases only support
		// a value of 'en_US.UTF8' at creation time.
		collation?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string
		id?:              string

		// The name of the Cloud SQL instance. This does not include the project
		// ID.
		instance!: string

		// The name of the database in the Cloud SQL instance.
		// This does not include the project ID or instance name.
		name!:      string
		project?:   string
		self_link?: string
	})
}
