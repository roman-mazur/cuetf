package res

import "list"

#google_bigquery_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_bigquery_connection")
	close({
		// Optional connection id that should be assigned to the created
		// connection.
		connection_id?: string

		// A descriptive description for the connection
		description?: string

		// A descriptive name for the connection
		friendly_name?: string

		// True if the connection has credential assigned.
		has_credential?: bool
		id?:             string

		// Optional. The Cloud KMS key that is used for encryption.
		//
		// Example:
		// projects/[kms_project_id]/locations/[region]/keyRings/[key_region]/cryptoKeys/[key]
		kms_key_name?: string
		aws?: matchN(1, [#aws, list.MaxItems(1) & [...#aws]])
		azure?: matchN(1, [#azure, list.MaxItems(1) & [...#azure]])
		cloud_resource?: matchN(1, [#cloud_resource, list.MaxItems(1) & [...#cloud_resource]])
		cloud_spanner?: matchN(1, [#cloud_spanner, list.MaxItems(1) & [...#cloud_spanner]])
		cloud_sql?: matchN(1, [#cloud_sql, list.MaxItems(1) & [...#cloud_sql]])

		// The geographic location where the connection should reside.
		// Cloud SQL instance must be in the same location as the
		// connection
		// with following exceptions: Cloud SQL us-central1 maps to
		// BigQuery US, Cloud SQL europe-west1 maps to BigQuery EU.
		// Examples: US, EU, asia-northeast1, us-central1, europe-west1.
		// Spanner Connections same as spanner region
		// AWS allowed regions are aws-us-east-1
		// Azure allowed regions are azure-eastus2
		location?: string
		spark?: matchN(1, [#spark, list.MaxItems(1) & [...#spark]])
		timeouts?: #timeouts

		// The resource name of the connection in the form of:
		// "projects/{project_id}/locations/{location_id}/connections/{connectionId}"
		name?:    string
		project?: string
	})

	#aws: close({
		access_role?: matchN(1, [_#defs."/$defs/aws/$defs/access_role", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/aws/$defs/access_role"]])
	})

	#azure: close({
		// The name of the Azure Active Directory Application.
		application?: string

		// The client id of the Azure Active Directory Application.
		client_id?: string

		// The id of customer's directory that host the data.
		customer_tenant_id!: string

		// The Azure Application (client) ID where the federated
		// credentials will be hosted.
		federated_application_client_id?: string

		// A unique Google-owned and Google-generated identity for the
		// Connection. This identity will be used to access the user's
		// Azure Active Directory Application.
		identity?: string

		// The object id of the Azure Active Directory Application.
		object_id?: string

		// The URL user will be redirected to after granting consent
		// during connection setup.
		redirect_uri?: string
	})

	#cloud_resource: close({
		// The account ID of the service created for the purpose of this
		// connection.
		service_account_id?: string
	})

	#cloud_spanner: close({
		// Cloud Spanner database in the form 'project/instance/database'.
		database!: string

		// Cloud Spanner database role for fine-grained access control.
		// The Cloud Spanner admin should have provisioned the database
		// role with appropriate permissions, such as 'SELECT' and
		// 'INSERT'. Other users should only use roles provided by their
		// Cloud Spanner admins. The database role name must start with a
		// letter, and can only contain letters, numbers, and
		// underscores. For more details, see
		// https://cloud.google.com/spanner/docs/fgac-about.
		database_role?: string

		// Allows setting max parallelism per query when executing on
		// Spanner independent compute resources. If unspecified, default
		// values of parallelism are chosen that are dependent on the
		// Cloud Spanner instance configuration. 'useParallelism' and
		// 'useDataBoost' must be set when setting max parallelism.
		max_parallelism?: number

		// If set, the request will be executed via Spanner independent
		// compute resources. 'use_parallelism' must be set when using
		// data boost.
		use_data_boost?: bool

		// If parallelism should be used when reading from Cloud Spanner.
		use_parallelism?: bool
	})

	#cloud_sql: close({
		// Database name.
		database!: string

		// Cloud SQL instance ID in the form project:location:instance.
		instance_id!: string

		// When the connection is used in the context of an operation in
		// BigQuery, this service account will serve as the identity
		// being used for connecting to the CloudSQL instance specified
		// in this connection.
		service_account_id?: string
		credential?: matchN(1, [_#defs."/$defs/cloud_sql/$defs/credential", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/cloud_sql/$defs/credential"]])

		// Type of the Cloud SQL database. Possible values:
		// ["DATABASE_TYPE_UNSPECIFIED", "POSTGRES", "MYSQL"]
		type!: string
	})

	#spark: close({
		metastore_service_config?: matchN(1, [_#defs."/$defs/spark/$defs/metastore_service_config", list.MaxItems(1) & [..._#defs."/$defs/spark/$defs/metastore_service_config"]])
		spark_history_server_config?: matchN(1, [_#defs."/$defs/spark/$defs/spark_history_server_config", list.MaxItems(1) & [..._#defs."/$defs/spark/$defs/spark_history_server_config"]])

		// The account ID of the service created for the purpose of this
		// connection.
		service_account_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/aws/$defs/access_role": close({
		// The user’s AWS IAM Role that trusts the Google-owned AWS IAM
		// user Connection.
		iam_role_id!: string

		// A unique Google-owned and Google-generated identity for the
		// Connection. This identity will be used to access the user's
		// AWS IAM Role.
		identity?: string
	})

	_#defs: "/$defs/cloud_sql/$defs/credential": close({
		// Password for database.
		password!: string

		// Username for database.
		username!: string
	})

	_#defs: "/$defs/spark/$defs/metastore_service_config": close({
		// Resource name of an existing Dataproc Metastore service in the
		// form of
		// projects/[projectId]/locations/[region]/services/[serviceId].
		metastore_service?: string
	})

	_#defs: "/$defs/spark/$defs/spark_history_server_config": close({
		// Resource name of an existing Dataproc Cluster to act as a Spark
		// History Server for the connection if the form of
		// projects/[projectId]/regions/[region]/clusters/[cluster_name].
		dataproc_cluster?: string
	})
}
