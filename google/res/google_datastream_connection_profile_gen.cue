package res

import "list"

#google_datastream_connection_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_datastream_connection_profile")
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
		bigquery_profile?: matchN(1, [#bigquery_profile, list.MaxItems(1) & [...#bigquery_profile]])

		// The name of the location this connection profile is located in.
		location!: string
		forward_ssh_connectivity?: matchN(1, [#forward_ssh_connectivity, list.MaxItems(1) & [...#forward_ssh_connectivity]])
		gcs_profile?: matchN(1, [#gcs_profile, list.MaxItems(1) & [...#gcs_profile]])
		mongodb_profile?: matchN(1, [#mongodb_profile, list.MaxItems(1) & [...#mongodb_profile]])
		mysql_profile?: matchN(1, [#mysql_profile, list.MaxItems(1) & [...#mysql_profile]])
		oracle_profile?: matchN(1, [#oracle_profile, list.MaxItems(1) & [...#oracle_profile]])
		postgresql_profile?: matchN(1, [#postgresql_profile, list.MaxItems(1) & [...#postgresql_profile]])
		private_connectivity?: matchN(1, [#private_connectivity, list.MaxItems(1) & [...#private_connectivity]])
		sql_server_profile?: matchN(1, [#sql_server_profile, list.MaxItems(1) & [...#sql_server_profile]])
		timeouts?: #timeouts

		// The resource's name.
		name?:    string
		project?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
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

	#mongodb_profile: close({
		// Password for the MongoDB connection. Mutually exclusive with
		// secretManagerStoredPassword.
		password?: string

		// Name of the replica set.
		replica_set?: string
		host_addresses!: matchN(1, [_#defs."/$defs/mongodb_profile/$defs/host_addresses", [_, ...] & [..._#defs."/$defs/mongodb_profile/$defs/host_addresses"]])

		// A reference to a Secret Manager resource name storing the
		// MongoDB
		// connection password. Mutually exclusive with password.
		secret_manager_stored_password?: string
		srv_connection_format?: matchN(1, [_#defs."/$defs/mongodb_profile/$defs/srv_connection_format", list.MaxItems(1) & [..._#defs."/$defs/mongodb_profile/$defs/srv_connection_format"]])

		// Username for the MongoDB connection.
		username!: string
		ssl_config?: matchN(1, [_#defs."/$defs/mongodb_profile/$defs/ssl_config", list.MaxItems(1) & [..._#defs."/$defs/mongodb_profile/$defs/ssl_config"]])
		standard_connection_format?: matchN(1, [_#defs."/$defs/mongodb_profile/$defs/standard_connection_format", list.MaxItems(1) & [..._#defs."/$defs/mongodb_profile/$defs/standard_connection_format"]])
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
		ssl_config?: matchN(1, [_#defs."/$defs/postgresql_profile/$defs/ssl_config", list.MaxItems(1) & [..._#defs."/$defs/postgresql_profile/$defs/ssl_config"]])
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

	_#defs: "/$defs/mongodb_profile/$defs/host_addresses": close({
		// Hostname for the connection.
		hostname!: string

		// Port for the connection.
		port?: number
	})

	_#defs: "/$defs/mongodb_profile/$defs/srv_connection_format": close({})

	_#defs: "/$defs/mongodb_profile/$defs/ssl_config": close({
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

		// A reference to a Secret Manager resource name storing the
		// PEM-encoded private key. Mutually exclusive with clientKey.
		secret_manager_stored_client_key?: string
	})

	_#defs: "/$defs/mongodb_profile/$defs/standard_connection_format": close({
		// Specifies whether the client connects directly to the
		// host[:port] in the connection URI.
		direct_connection?: bool
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

	_#defs: "/$defs/postgresql_profile/$defs/ssl_config": close({
		server_and_client_verification?: matchN(1, [_#defs."/$defs/postgresql_profile/$defs/ssl_config/$defs/server_and_client_verification", list.MaxItems(1) & [..._#defs."/$defs/postgresql_profile/$defs/ssl_config/$defs/server_and_client_verification"]])
		server_verification?: matchN(1, [_#defs."/$defs/postgresql_profile/$defs/ssl_config/$defs/server_verification", list.MaxItems(1) & [..._#defs."/$defs/postgresql_profile/$defs/ssl_config/$defs/server_verification"]])
	})

	_#defs: "/$defs/postgresql_profile/$defs/ssl_config/$defs/server_and_client_verification": close({
		// PEM-encoded server root CA certificate.
		ca_certificate!: string

		// PEM-encoded certificate used by the source database to
		// authenticate the
		// client identity (i.e., the Datastream's identity). This
		// certificate is
		// signed by either a root certificate trusted by the server or
		// one or more
		// intermediate certificates (which is stored with the leaf
		// certificate) to
		// link to this certificate to the trusted root certificate.
		client_certificate!: string

		// PEM-encoded private key associated with the client certificate.
		// This value will be used during the SSL/TLS handshake, allowing
		// the PostgreSQL server to authenticate the client's identity,
		// i.e. identity of the stream.
		client_key!: string
	})

	_#defs: "/$defs/postgresql_profile/$defs/ssl_config/$defs/server_verification": close({
		// PEM-encoded server root CA certificate.
		ca_certificate!: string
	})
}
