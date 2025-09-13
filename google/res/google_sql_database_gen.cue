package res

#google_sql_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_sql_database")
	close({
		// The charset value. See MySQL's
		// [Supported Character Sets and
		// Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
		// and Postgres' [Character Set
		// Support](https://www.postgresql.org/docs/9.6/static/multibyte.html)
		// for more details and supported values. Postgres databases only
		// support
		// a value of 'UTF8' at creation time.
		charset?: string

		// The collation value. See MySQL's
		// [Supported Character Sets and
		// Collations](https://dev.mysql.com/doc/refman/5.7/en/charset-charsets.html)
		// and Postgres' [Collation
		// Support](https://www.postgresql.org/docs/9.6/static/collation.html)
		// for more details and supported values. Postgres databases only
		// support
		// a value of 'en_US.UTF8' at creation time.
		collation?: string

		// The deletion policy for the database. Setting ABANDON allows
		// the resource
		// to be abandoned rather than deleted. This is useful for
		// Postgres, where databases cannot be
		// deleted from the API if there are users other than
		// cloudsqlsuperuser with access. Possible
		// values are: "ABANDON", "DELETE". Defaults to "DELETE".
		deletion_policy?: string
		id?:              string

		// The name of the Cloud SQL instance. This does not include the
		// project
		// ID.
		instance!: string

		// The name of the database in the Cloud SQL instance.
		// This does not include the project ID or instance name.
		name!:      string
		timeouts?:  #timeouts
		project?:   string
		self_link?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
