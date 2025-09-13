package res

import "list"

#google_datastream_connection_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_datastream_connection_profile")
	close({
		// The connection profile identifier.
		connection_profile_id!: string

		// Create the connection profile without validating it.
		create_without_validation?: bool

		// Display name.
		display_name!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The name of the location this connection profile is located in.
		location!: string
		bigquery_profile?: matchN(1, [#bigquery_profile, list.MaxItems(1) & [...#bigquery_profile]])
		forward_ssh_connectivity?: matchN(1, [#forward_ssh_connectivity, list.MaxItems(1) & [...#forward_ssh_connectivity]])
		gcs_profile?: matchN(1, [#gcs_profile, list.MaxItems(1) & [...#gcs_profile]])
		mysql_profile?: matchN(1, [#mysql_profile, list.MaxItems(1) & [...#mysql_profile]])
		oracle_profile?: matchN(1, [#oracle_profile, list.MaxItems(1) & [...#oracle_profile]])
		postgresql_profile?: matchN(1, [#postgresql_profile, list.MaxItems(1) & [...#postgresql_profile]])
		private_connectivity?: matchN(1, [#private_connectivity, list.MaxItems(1) & [...#private_connectivity]])

		// The resource's name.
		name?: string
		sql_server_profile?: matchN(1, [#sql_server_profile, list.MaxItems(1) & [...#sql_server_profile]])

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?:  string
		timeouts?: #timeouts
	})

	#bigquery_profile: close({})

	#forward_ssh_connectivity: close({
		// Hostname for the SSH tunnel.
		hostname!: string

		// SSH password.
		password?: string

		// Port for the SSH tunnel.
		port?: number

		// SSH private key.
		private_key?: string

		// Username for the SSH tunnel.
		username!: string
	})

	#gcs_profile: close({
		// The Cloud Storage bucket name.
		bucket!: string

		// The root path inside the Cloud Storage bucket.
		root_path?: string
	})

	#mysql_profile: close({
		// Hostname for the MySQL connection.
		hostname!: string

		// Password for the MySQL connection.
		password?: string

		// Port for the MySQL connection.
		port?: number

		// A reference to a Secret Manager resource name storing the
		// user's password.
		secret_manager_stored_password?: string
		ssl_config?: matchN(1, [_#defs."/$defs/mysql_profile/$defs/ssl_config", list.MaxItems(1) & [..._#defs."/$defs/mysql_profile/$defs/ssl_config"]])

		// Username for the MySQL connection.
		username!: string
	})

	#oracle_profile: close({
		// Connection string attributes
		connection_attributes?: [string]: string

		// Database for the Oracle connection.
		database_service!: string

		// Hostname for the Oracle connection.
		hostname!: string

		// Password for the Oracle connection.
		password?: string

		// Port for the Oracle connection.
		port?: number

		// A reference to a Secret Manager resource name storing the
		// user's password.
		secret_manager_stored_password?: string

		// Username for the Oracle connection.
		username!: string
	})

	#postgresql_profile: close({
		// Database for the PostgreSQL connection.
		database!: string

		// Hostname for the PostgreSQL connection.
		hostname!: string

		// Password for the PostgreSQL connection.
		password?: string

		// Port for the PostgreSQL connection.
		port?: number

		// A reference to a Secret Manager resource name storing the
		// user's password.
		secret_manager_stored_password?: string

		// Username for the PostgreSQL connection.
		username!: string
	})

	#private_connectivity: close({
		// A reference to a private connection resource. Format:
		// 'projects/{project}/locations/{location}/privateConnections/{name}'
		private_connection!: string
	})

	#sql_server_profile: close({
		// Database for the SQL Server connection.
		database!: string

		// Hostname for the SQL Server connection.
		hostname!: string

		// Password for the SQL Server connection.
		password?: string

		// Port for the SQL Server connection.
		port?: number

		// A reference to a Secret Manager resource name storing the
		// user's password.
		secret_manager_stored_password?: string

		// Username for the SQL Server connection.
		username!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/mysql_profile/$defs/ssl_config": close({
		// PEM-encoded certificate of the CA that signed the source
		// database
		// server's certificate.
		ca_certificate?: string

		// Indicates whether the clientKey field is set.
		ca_certificate_set?: bool

		// PEM-encoded certificate that will be used by the replica to
		// authenticate against the source database server. If this field
		// is used then the 'clientKey' and the 'caCertificate' fields are
		// mandatory.
		client_certificate?: string

		// Indicates whether the clientCertificate field is set.
		client_certificate_set?: bool

		// PEM-encoded private key associated with the Client Certificate.
		// If this field is used then the 'client_certificate' and the
		// 'ca_certificate' fields are mandatory.
		client_key?: string

		// Indicates whether the clientKey field is set.
		client_key_set?: bool
	})
}
