package res

import "list"

#google_database_migration_service_connection_profile: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_database_migration_service_connection_profile")
	close({
		// The ID of the connection profile.
		connection_profile_id!: string

		// Output only. The timestamp when the resource was created. A
		// timestamp in RFC3339 UTC 'Zulu' format, accurate to
		// nanoseconds. Example: '2014-10-02T15:01:23.045123456Z'.
		create_time?: string

		// The database provider.
		dbprovider?: string

		// The connection profile display name.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Output only. The error details in case of state FAILED.
		error?: [...close({
			code?: number
			details?: [...{
				[string]: string
			}]
			message?: string
		})]
		id?: string

		// The resource labels for connection profile to use to annotate
		// any related underlying resources such as Compute Engine VMs.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the connection profile should reside.
		location?: string

		// The name of this connection profile resource in the form of
		// projects/{project}/locations/{location}/connectionProfiles/{connectionProfile}.
		name?: string
		alloydb?: matchN(1, [#alloydb, list.MaxItems(1) & [...#alloydb]])
		cloudsql?: matchN(1, [#cloudsql, list.MaxItems(1) & [...#cloudsql]])
		mysql?: matchN(1, [#mysql, list.MaxItems(1) & [...#mysql]])
		oracle?: matchN(1, [#oracle, list.MaxItems(1) & [...#oracle]])
		postgresql?: matchN(1, [#postgresql, list.MaxItems(1) & [...#postgresql]])
		timeouts?: #timeouts
		project?:  string

		// The current connection profile state.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#alloydb: close({
		settings?: matchN(1, [_#defs."/$defs/alloydb/$defs/settings", list.MaxItems(1) & [..._#defs."/$defs/alloydb/$defs/settings"]])

		// Required. The AlloyDB cluster ID that this connection profile
		// is associated with.
		cluster_id!: string
	})

	#cloudsql: close({
		// Output only. The Cloud SQL instance ID that this connection
		// profile is associated with.
		cloud_sql_id?: string
		settings?: matchN(1, [_#defs."/$defs/cloudsql/$defs/settings", list.MaxItems(1) & [..._#defs."/$defs/cloudsql/$defs/settings"]])

		// Output only. The Cloud SQL database instance's private IP.
		private_ip?: string

		// Output only. The Cloud SQL database instance's public IP.
		public_ip?: string
	})

	#mysql: close({
		// If the source is a Cloud SQL database, use this field to
		// provide the Cloud SQL instance ID of the source.
		cloud_sql_id?: string

		// The IP or hostname of the source MySQL database.
		host?: string

		// Input only. The password for the user that Database Migration
		// Service will be using to connect to the database.
		// This field is not returned on request, and the value is
		// encrypted when stored in Database Migration Service.
		password?: string

		// Output only. Indicates If this connection profile password is
		// stored.
		password_set?: bool

		// The network port of the source MySQL database.
		port?: number

		// The username that Database Migration Service will use to
		// connect to the database. The value is encrypted when stored in
		// Database Migration Service.
		username?: string
		ssl?: matchN(1, [_#defs."/$defs/mysql/$defs/ssl", list.MaxItems(1) & [..._#defs."/$defs/mysql/$defs/ssl"]])
	})

	#oracle: close({
		// Required. Database service for the Oracle connection.
		database_service!: string

		// Required. The IP or hostname of the source Oracle database.
		host!: string

		// Required. Input only. The password for the user that Database
		// Migration Service will be using to connect to the database.
		// This field is not returned on request, and the value is
		// encrypted when stored in Database Migration Service.
		password!: string

		// Output only. Indicates If this connection profile password is
		// stored.
		password_set?: bool

		// Required. The network port of the source Oracle database.
		port!: number
		forward_ssh_connectivity?: matchN(1, [_#defs."/$defs/oracle/$defs/forward_ssh_connectivity", list.MaxItems(1) & [..._#defs."/$defs/oracle/$defs/forward_ssh_connectivity"]])
		private_connectivity?: matchN(1, [_#defs."/$defs/oracle/$defs/private_connectivity", list.MaxItems(1) & [..._#defs."/$defs/oracle/$defs/private_connectivity"]])
		ssl?: matchN(1, [_#defs."/$defs/oracle/$defs/ssl", list.MaxItems(1) & [..._#defs."/$defs/oracle/$defs/ssl"]])

		// Required. The username that Database Migration Service will use
		// to connect to the database. The value is encrypted when stored
		// in Database Migration Service.
		username!: string
		static_service_ip_connectivity?: matchN(1, [_#defs."/$defs/oracle/$defs/static_service_ip_connectivity", list.MaxItems(1) & [..._#defs."/$defs/oracle/$defs/static_service_ip_connectivity"]])
	})

	#postgresql: close({
		// If the connected database is an AlloyDB instance, use this
		// field to provide the AlloyDB cluster ID.
		alloydb_cluster_id?: string

		// If the source is a Cloud SQL database, use this field to
		// provide the Cloud SQL instance ID of the source.
		cloud_sql_id?: string

		// The IP or hostname of the source MySQL database.
		host?: string

		// Output only. If the source is a Cloud SQL database, this field
		// indicates the network architecture it's associated with.
		network_architecture?: string

		// Input only. The password for the user that Database Migration
		// Service will be using to connect to the database.
		// This field is not returned on request, and the value is
		// encrypted when stored in Database Migration Service.
		password?: string

		// Output only. Indicates If this connection profile password is
		// stored.
		password_set?: bool
		ssl?: matchN(1, [_#defs."/$defs/postgresql/$defs/ssl", list.MaxItems(1) & [..._#defs."/$defs/postgresql/$defs/ssl"]])

		// The network port of the source MySQL database.
		port?: number

		// The username that Database Migration Service will use to
		// connect to the database. The value is encrypted when stored in
		// Database Migration Service.
		username?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/alloydb/$defs/settings": close({
		initial_user!: matchN(1, [_#defs."/$defs/alloydb/$defs/settings/$defs/initial_user", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/alloydb/$defs/settings/$defs/initial_user"]])
		primary_instance_settings?: matchN(1, [_#defs."/$defs/alloydb/$defs/settings/$defs/primary_instance_settings", list.MaxItems(1) & [..._#defs."/$defs/alloydb/$defs/settings/$defs/primary_instance_settings"]])

		// Labels for the AlloyDB cluster created by DMS.
		labels?: [string]: string

		// Required. The resource link for the VPC network in which
		// cluster resources are created and from which they are
		// accessible via Private IP. The network must belong to the same
		// project as the cluster.
		// It is specified in the form:
		// 'projects/{project_number}/global/networks/{network_id}'. This
		// is required to create a cluster.
		vpc_network!: string
	})

	_#defs: "/$defs/alloydb/$defs/settings/$defs/initial_user": close({
		// The initial password for the user.
		password!: string

		// Output only. Indicates if the initialUser.password field has
		// been set.
		password_set?: bool

		// The database username.
		user!: string
	})

	_#defs: "/$defs/alloydb/$defs/settings/$defs/primary_instance_settings": close({
		// Database flags to pass to AlloyDB when DMS is creating the
		// AlloyDB cluster and instances. See the AlloyDB documentation
		// for how these can be used.
		database_flags?: [string]: string

		// The database username.
		id!: string

		// Labels for the AlloyDB primary instance created by DMS.
		labels?: [string]: string
		machine_config!: matchN(1, [_#defs."/$defs/alloydb/$defs/settings/$defs/primary_instance_settings/$defs/machine_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/alloydb/$defs/settings/$defs/primary_instance_settings/$defs/machine_config"]])

		// Output only. The private IP address for the Instance. This is
		// the connection endpoint for an end-user application.
		private_ip?: string
	})

	_#defs: "/$defs/alloydb/$defs/settings/$defs/primary_instance_settings/$defs/machine_config": close({
		// The number of CPU's in the VM instance.
		cpu_count!: number
	})

	_#defs: "/$defs/cloudsql/$defs/settings": close({
		// The activation policy specifies when the instance is activated;
		// it is applicable only when the instance state is 'RUNNABLE'.
		// Possible values: ["ALWAYS", "NEVER"]
		activation_policy?: string

		// If you enable this setting, Cloud SQL checks your available
		// storage every 30 seconds. If the available storage falls below
		// a threshold size, Cloud SQL automatically adds additional
		// storage capacity.
		// If the available storage repeatedly falls below the threshold
		// size, Cloud SQL continues to add storage until it reaches the
		// maximum of 30 TB.
		auto_storage_increase?: bool

		// The KMS key name used for the csql instance.
		cmek_key_name?: string

		// The Cloud SQL default instance level collation.
		collation?: string

		// The storage capacity available to the database, in GB. The
		// minimum (and default) size is 10GB.
		data_disk_size_gb?: string

		// The type of storage. Possible values: ["PD_SSD", "PD_HDD"]
		data_disk_type?: string

		// The database flags passed to the Cloud SQL instance at startup.
		database_flags?: [string]: string

		// The database engine type and version.
		// Currently supported values located at
		// https://cloud.google.com/database-migration/docs/reference/rest/v1/projects.locations.connectionProfiles#sqldatabaseversion
		database_version?: string

		// The edition of the given Cloud SQL instance. Possible values:
		// ["ENTERPRISE", "ENTERPRISE_PLUS"]
		edition?: string

		// Input only. Initial root password.
		root_password?: string
		ip_config?: matchN(1, [_#defs."/$defs/cloudsql/$defs/settings/$defs/ip_config", list.MaxItems(1) & [..._#defs."/$defs/cloudsql/$defs/settings/$defs/ip_config"]])

		// Output only. Indicates If this connection profile root password
		// is stored.
		root_password_set?: bool

		// The Database Migration Service source connection profile ID, in
		// the format:
		// projects/my_project_name/locations/us-central1/connectionProfiles/connection_profile_ID
		source_id!: string

		// The maximum size to which storage capacity can be automatically
		// increased. The default value is 0, which specifies that there
		// is no limit.
		storage_auto_resize_limit?: string

		// The tier (or machine type) for this instance, for example:
		// db-n1-standard-1 (MySQL instances) or db-custom-1-3840
		// (PostgreSQL instances).
		// For more information, see
		// https://cloud.google.com/sql/docs/mysql/instance-settings
		tier?: string

		// The resource labels for a Cloud SQL instance to use to annotate
		// any related underlying resources such as Compute Engine VMs.
		user_labels?: [string]: string

		// The Google Cloud Platform zone where your Cloud SQL datdabse
		// instance is located.
		zone?: string
	})

	_#defs: "/$defs/cloudsql/$defs/settings/$defs/ip_config": close({
		// Whether the instance should be assigned an IPv4 address or not.
		enable_ipv4?: bool
		authorized_networks?: matchN(1, [_#defs."/$defs/cloudsql/$defs/settings/$defs/ip_config/$defs/authorized_networks", [..._#defs."/$defs/cloudsql/$defs/settings/$defs/ip_config/$defs/authorized_networks"]])

		// The resource link for the VPC network from which the Cloud SQL
		// instance is accessible for private IP. For example,
		// projects/myProject/global/networks/default.
		// This setting can be updated, but it cannot be removed after it
		// is set.
		private_network?: string

		// Whether SSL connections over IP should be enforced or not.
		require_ssl?: bool
	})

	_#defs: "/$defs/cloudsql/$defs/settings/$defs/ip_config/$defs/authorized_networks": close({
		// The time when this access control entry expires in RFC 3339
		// format.
		expire_time?: string

		// A label to identify this entry.
		label?: string

		// Input only. The time-to-leave of this access control entry.
		ttl?: string

		// The allowlisted value for the access control list.
		value!: string
	})

	_#defs: "/$defs/mysql/$defs/ssl": close({
		// Input only. The x509 PEM-encoded certificate of the CA that
		// signed the source database server's certificate.
		// The replica will use this certificate to verify it's connecting
		// to the right host.
		ca_certificate?: string

		// Input only. The x509 PEM-encoded certificate that will be used
		// by the replica to authenticate against the source database
		// server.
		// If this field is used then the 'clientKey' field is mandatory
		client_certificate?: string

		// Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded
		// private key associated with the Client Certificate.
		// If this field is used then the 'clientCertificate' field is
		// mandatory.
		client_key?: string

		// The current connection profile state. Possible values:
		// ["SERVER_ONLY", "SERVER_CLIENT", "REQUIRED", "NONE"]
		type?: string
	})

	_#defs: "/$defs/oracle/$defs/forward_ssh_connectivity": close({
		// Required. Hostname for the SSH tunnel.
		hostname!: string

		// Input only. SSH password. Only one of 'password' and
		// 'private_key' can be configured.
		password?: string

		// Port for the SSH tunnel, default value is 22.
		port!: number

		// Input only. SSH private key. Only one of 'password' and
		// 'private_key' can be configured.
		private_key?: string

		// Required. Username for the SSH tunnel.
		username!: string
	})

	_#defs: "/$defs/oracle/$defs/private_connectivity": close({
		// Required. The resource name (URI) of the private connection.
		private_connection!: string
	})

	_#defs: "/$defs/oracle/$defs/ssl": close({
		// Input only. The x509 PEM-encoded certificate of the CA that
		// signed the source database server's certificate.
		// The replica will use this certificate to verify it's connecting
		// to the right host.
		ca_certificate?: string

		// Input only. The x509 PEM-encoded certificate that will be used
		// by the replica to authenticate against the source database
		// server.
		// If this field is used then the 'clientKey' field is mandatory
		client_certificate?: string

		// Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded
		// private key associated with the Client Certificate.
		// If this field is used then the 'clientCertificate' field is
		// mandatory.
		client_key?: string

		// The current connection profile state.
		type?: string
	})

	_#defs: "/$defs/oracle/$defs/static_service_ip_connectivity": close({})

	_#defs: "/$defs/postgresql/$defs/ssl": close({
		// Input only. The x509 PEM-encoded certificate of the CA that
		// signed the source database server's certificate.
		// The replica will use this certificate to verify it's connecting
		// to the right host.
		ca_certificate?: string

		// Input only. The x509 PEM-encoded certificate that will be used
		// by the replica to authenticate against the source database
		// server.
		// If this field is used then the 'clientKey' field is mandatory
		client_certificate?: string

		// Input only. The unencrypted PKCS#1 or PKCS#8 PEM-encoded
		// private key associated with the Client Certificate.
		// If this field is used then the 'clientCertificate' field is
		// mandatory.
		client_key?: string

		// The current connection profile state. Possible values:
		// ["SERVER_ONLY", "SERVER_CLIENT", "REQUIRED", "NONE"]
		type?: string
	})
}
