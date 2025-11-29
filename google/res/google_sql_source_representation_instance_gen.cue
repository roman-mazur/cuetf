package res

#google_sql_source_representation_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_sql_source_representation_instance")
	close({
		// The CA certificate on the external server. Include only if
		// SSL/TLS is used on the external server.
		ca_certificate?: string

		// The client certificate on the external server. Required only
		// for server-client authentication. Include only if SSL/TLS is
		// used on the external server.
		client_certificate?: string

		// The private key file for the client certificate on the external
		// server. Required only for server-client authentication.
		// Include only if SSL/TLS is used on the external server.
		client_key?: string

		// The MySQL, PostgreSQL or SQL Server (beta) version to use.
		// Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0,
		// MYSQL_8_4, POSTGRES_9_6, POSTGRES_10, POSTGRES_11,
		// POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15,
		// POSTGRES_16, POSTGRES_17. Database Version Policies includes
		// an up-to-date reference of supported versions.
		database_version!: string

		// A file in the bucket that contains the data from the external
		// server.
		dump_file_path?: string

		// The IPv4 address and port for the external server, or the the
		// DNS address for the external server. If the external server is
		// hosted on Cloud SQL, the port is 5432.
		host!: string
		id?:   string

		// The name of the source representation instance. Use any valid
		// Cloud SQL instance name.
		name!: string

		// The password for the replication user account.
		password?: string
		timeouts?: #timeouts

		// The externally accessible port for the source database server.
		// Defaults to 3306.
		port?:    number
		project?: string

		// The Region in which the created instance should reside.
		// If it is not provided, the provider region is used.
		region?: string

		// The replication user account on the external server.
		username?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})
}
