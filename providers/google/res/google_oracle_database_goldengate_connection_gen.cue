package res

import "list"

#google_oracle_database_goldengate_connection: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_oracle_database_goldengate_connection")
	close({
		properties!: matchN(1, [#properties, list.MaxItems(1) & [_, ...] & [...#properties]])
		timeouts?: #timeouts

		// The date and time that the GoldengateConnection was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the
		// instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete
		// the instance,
		// the command will fail if this field is set to "PREVENT" in
		// Terraform state.
		// When set to "ABANDON", the command will remove the resource
		// from Terraform
		// management without updating or deleting the resource in the
		// API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Whether or not to allow Terraform to destroy the instance.
		// Unless this field is set to false in Terraform state, a
		// terraform destroy or terraform apply that would delete the
		// instance will fail.
		deletion_protection?: bool

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The ID of the subscription entitlement associated with the
		// GoldengateConnection.
		entitlement_id?: string

		// The GCP Oracle zone where Oracle GoldengateConnection is
		// hosted.
		// Example: us-east4-b-r2.
		// If not specified, the system will pick a zone based on
		// availability.
		gcp_oracle_zone?: string

		// The ID of the GoldengateConnection to create. This value is
		// restricted to (^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$) and must be a
		// maximum of
		// 63 characters in length. The value must start with a letter and
		// end with a
		// letter or a number.
		goldengate_connection_id!: string
		id?:                       string

		// The labels or tags associated with the GoldengateConnection.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The name of the GoldengateConnection resource in
		// the following format:
		// projects/{project}/locations/{region}/goldengateConnections/{goldengate_connection}
		name?: string

		// HTTPS link to OCI resources exposed to Customer via UI
		// Interface.
		oci_url?: string

		// The name of the OdbNetwork associated with the
		// GoldengateConnection.
		// The format is
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}.
		// It is optional but if specified, this should match the parent
		// ODBNetwork
		// of the OdbSubnet.
		odb_network?: string

		// The name of the OdbSubnet associated with the
		// GoldengateConnection for IP
		// allocation.
		// Format:
		// projects/{project}/locations/{location}/odbNetworks/{odb_network}/odbSubnets/{odb_subnet}
		odb_subnet?: string
		project?:    string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#properties: close({
		amazon_kinesis_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/amazon_kinesis_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/amazon_kinesis_connection_properties"]])
		amazon_redshift_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/amazon_redshift_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/amazon_redshift_connection_properties"]])
		amazon_s3_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/amazon_s3_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/amazon_s3_connection_properties"]])
		azure_data_lake_storage_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/azure_data_lake_storage_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/azure_data_lake_storage_connection_properties"]])
		azure_synapse_analytics_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/azure_synapse_analytics_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/azure_synapse_analytics_connection_properties"]])
		databricks_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/databricks_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/databricks_connection_properties"]])
		db2_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/db2_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/db2_connection_properties"]])
		elasticsearch_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/elasticsearch_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/elasticsearch_connection_properties"]])
		generic_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/generic_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/generic_connection_properties"]])
		goldengate_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/goldengate_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/goldengate_connection_properties"]])
		google_big_query_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/google_big_query_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/google_big_query_connection_properties"]])
		google_cloud_storage_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/google_cloud_storage_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/google_cloud_storage_connection_properties"]])
		google_pubsub_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/google_pubsub_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/google_pubsub_connection_properties"]])
		hdfs_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/hdfs_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/hdfs_connection_properties"]])
		iceberg_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/iceberg_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/iceberg_connection_properties"]])
		java_message_service_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/java_message_service_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/java_message_service_connection_properties"]])
		kafka_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/kafka_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/kafka_connection_properties"]])
		kafka_schema_registry_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/kafka_schema_registry_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/kafka_schema_registry_connection_properties"]])
		microsoft_fabric_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/microsoft_fabric_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/microsoft_fabric_connection_properties"]])
		microsoft_sqlserver_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/microsoft_sqlserver_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/microsoft_sqlserver_connection_properties"]])
		mongodb_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/mongodb_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/mongodb_connection_properties"]])
		mysql_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/mysql_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/mysql_connection_properties"]])
		oci_object_storage_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/oci_object_storage_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/oci_object_storage_connection_properties"]])
		oracle_ai_data_platform_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/oracle_ai_data_platform_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/oracle_ai_data_platform_connection_properties"]])
		oracle_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/oracle_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/oracle_connection_properties"]])
		oracle_nosql_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/oracle_nosql_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/oracle_nosql_connection_properties"]])
		postgresql_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/postgresql_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/postgresql_connection_properties"]])
		redis_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/redis_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/redis_connection_properties"]])
		snowflake_connection_properties?: matchN(1, [_#defs."/$defs/properties/$defs/snowflake_connection_properties", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/snowflake_connection_properties"]])

		// The connection type.
		// Possible values:
		// GOLDENGATE
		// KAFKA
		// KAFKA_SCHEMA_REGISTRY
		// MYSQL
		// JAVA_MESSAGE_SERVICE
		// MICROSOFT_SQLSERVER
		// OCI_OBJECT_STORAGE
		// ORACLE
		// AZURE_DATA_LAKE_STORAGE
		// POSTGRESQL
		// AZURE_SYNAPSE_ANALYTICS
		// SNOWFLAKE
		// AMAZON_S3
		// HDFS
		// ORACLE_AI_DATA_PLATFORM
		// ORACLE_NOSQL
		// MONGODB
		// AMAZON_KINESIS
		// AMAZON_REDSHIFT
		// DB2
		// REDIS
		// ELASTICSEARCH
		// GENERIC
		// GOOGLE_CLOUD_STORAGE
		// GOOGLE_BIGQUERY
		// DATABRICKS
		// GOOGLE_PUBSUB
		// MICROSOFT_FABRIC
		// ICEBERG
		connection_type!: string

		// Metadata about this specific object.
		description?: string

		// An object's Display Name.
		display_name!: string

		// The Ingress IPs of the GoldengateConnection.
		ingress_ip_addresses?: [...string]

		// Describes the object's current state in detail. For example, it
		// can be
		// used to provide actionable information for a resource in a
		// Failed state.
		lifecycle_details?: string

		// The lifecycle state of the connection.
		// Possible values:
		// CREATING
		// ACTIVE
		// UPDATING
		// DELETING
		// DELETED
		// FAILED
		lifecycle_state?: string

		// The [OCID] of the connection being
		// referenced.
		ocid?: string

		// The routing method for the GoldengateConnection.
		// Possible values:
		// SHARED_DEPLOYMENT_ENDPOINT
		// DEDICATED_ENDPOINT
		routing_method?: string

		// The time the resource was last updated.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/properties/$defs/amazon_kinesis_connection_properties": close({
		// Access key ID to access the Amazon Kinesis.
		access_key_id?: string

		// The name of the AWS region.
		// If not provided, Goldengate will default to 'us-west-1'.
		aws_region?: string

		// The endpoint URL of the Amazon Kinesis service.
		// e.g.: 'https://kinesis.us-east-1.amazonaws.com'
		// If not provided, Goldengate will default to
		// 'https://kinesis..amazonaws.com'.
		endpoint?: string

		// Secret access key to access the Amazon Kinesis.
		secret_access_key_secret?: string

		// The technology type of AmazonKinesisConnection.
		technology_type?: string
	})

	_#defs: "/$defs/properties/$defs/amazon_redshift_connection_properties": close({
		// Connection URL.
		// e.g.:
		// 'jdbc:redshift://aws-redshift-instance.aaaaaaaaaaaa.us-east-2.redshift.amazonaws.com:5439/mydb'
		connection_url?: string

		// Input only. The password Oracle Goldengate uses for Amazon
		// Redshift connection
		// in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses for Amazon Redshift
		// connection.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The technology type of AmazonRedshiftConnection.
		technology_type?: string

		// The username Oracle Goldengate uses to connect the associated
		// system of
		// the given technology.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/amazon_s3_connection_properties": close({
		// Access key ID to access the Amazon S3 bucket.
		access_key_id?: string

		// The Amazon Endpoint for S3.
		endpoint?: string

		// The name of the AWS region where the bucket is created.
		region?: string

		// Secret access key to access the Amazon S3 bucket.
		secret_access_key_secret?: string

		// The technology type of AmazonS3Connection.
		technology_type?: string
	})

	_#defs: "/$defs/properties/$defs/azure_data_lake_storage_connection_properties": close({
		// Sets the Azure storage account name.
		account?: string

		// Azure storage account key. This property is required when
		// 'authentication_type' is set to 'SHARED_KEY'.
		account_key_secret?: string

		// Authentication mechanism to access Azure Data Lake Storage.
		// Possible values:
		// SHARED_KEY
		// SHARED_ACCESS_SIGNATURE
		// AZURE_ACTIVE_DIRECTORY
		authentication_type?: string

		// The endpoint used for authentication with Microsoft Entra ID
		// (formerly
		// Azure Active Directory). Default value:
		// https://login.microsoftonline.com
		azure_authority_host?: string

		// Azure tenant ID of the application. This property is required
		// when
		// 'authentication_type' is set to 'AZURE_ACTIVE_DIRECTORY'.
		azure_tenant_id?: string

		// Azure client ID of the application. This property is required
		// when
		// 'authentication_type' is set to 'AZURE_ACTIVE_DIRECTORY'.
		client_id?: string

		// Azure client secret (aka application password) for
		// authentication.
		client_secret?: string

		// Azure Storage service endpoint.
		// e.g: https://test.blob.core.windows.net
		endpoint?: string

		// Credential that uses a shared access signature (SAS) to
		// authenticate to
		// an Azure Service.
		sas_token_secret?: string

		// The technology type of AzureDataLakeStorageConnection.
		technology_type?: string
	})

	_#defs: "/$defs/properties/$defs/azure_synapse_analytics_connection_properties": close({
		// JDBC connection string.
		// e.g.:
		// 'jdbc:sqlserver://.sql.azuresynapse.net:1433;database=;encrypt=true;trustServerCertificate=false;hostNameInCertificate=*.sql.azuresynapse.net;loginTimeout=300;'
		connection_string?: string

		// Input only. The password Oracle Goldengate uses for Azure
		// Synapse Analytics
		// connection in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses for Azure Synapse Analytics
		// connection.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The technology type of AzureSynapseAnalyticsConnection.
		technology_type?: string

		// The username Oracle Goldengate uses to connect the associated
		// system of
		// the given technology.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/databricks_connection_properties": close({
		// Authentication type for Databricks.
		// Possible values:
		// PERSONAL_ACCESS_TOKEN
		// OAUTH_M2M
		authentication_type?: string

		// OAuth client id, only applicable for authentication_type ==
		// OAUTH_M2M
		client_id?: string

		// OAuth client secret, only applicable for authentication_type ==
		// OAUTH_M2M
		client_secret?: string

		// Connection URL.
		// e.g.:
		// 'jdbc:databricks://adb-33934.4.azuredatabricks.net:443/default;transportMode=http;ssl=1;httpPath=sql/protocolv1/o/3393########44/0##3-7-hlrb'
		connection_url?: string

		// Input only. The password used to connect to Databricks in plain
		// text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password used to connect to Databricks.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// External storage credential name to access files on object
		// storage such as ADLS Gen2, S3 or Cloud Storage.
		storage_credential?: string

		// The technology type of DatabricksConnection.
		technology_type?: string
	})

	_#defs: "/$defs/properties/$defs/db2_connection_properties": close({
		additional_attributes?: matchN(1, [_#defs."/$defs/properties/$defs/db2_connection_properties/$defs/additional_attributes", [..._#defs."/$defs/properties/$defs/db2_connection_properties/$defs/additional_attributes"]])

		// The name of the database.
		database?: string

		// The name or address of a host.
		host?: string

		// Input only. The password Oracle Goldengate uses for Db2
		// connection in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses for Db2 connection.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The port of an endpoint usually specified for a connection.
		port?: number

		// Security protocol for the DB2 database.
		// Possible values:
		// PLAIN
		// TLS
		security_protocol?: string

		// The keystash file which contains the encrypted password to
		// the key database file. Not supported for IBM Db2 for i.
		ssl_client_keystash_file?: string

		// The keystore file created at the client containing the
		// server certificate / CA root certificate. Not supported for IBM
		// Db2 for i.
		ssl_client_keystoredb_file?: string

		// The file which contains the self-signed server certificate
		// / Certificate Authority (CA) certificate.
		ssl_server_certificate_file?: string

		// The technology type of Db2Connection.
		technology_type?: string

		// The username Oracle Goldengate uses to connect to the DB2
		// database.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/db2_connection_properties/$defs/additional_attributes": close({
		// The name of the property entry.
		key!: string

		// The value of the property entry.
		value!: string
	})

	_#defs: "/$defs/properties/$defs/elasticsearch_connection_properties": close({
		// Authentication type for Elasticsearch.
		// Possible values:
		// NONE
		// BASIC
		authentication_type?: string

		// Fingerprint required by TLS security protocol.
		// Eg.:
		// '6152b2dfbff200f973c5074a5b91d06ab3b472c07c09a1ea57bb7fd406cdce9c'
		fingerprint?: string

		// Input only. The password Oracle Goldengate uses for Elastic
		// Search connection
		// in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses for Elastic Search
		// connection.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// Security protocol for Elasticsearch.
		// Possible values:
		// PLAIN
		// TLS
		security_protocol?: string

		// Comma separated list of Elasticsearch server addresses,
		// specified as
		// host:port entries, where :port is optional. If port is not
		// specified, it
		// defaults to 9200. Example:
		// "server1.example.com:4000,server2.example.com:4000"
		servers?: string

		// The technology type of ElasticsearchConnection.
		technology_type?: string

		// The username Oracle Goldengate uses to connect the associated
		// system of
		// the given technology.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/generic_connection_properties": close({
		// The host of the GenericConnection.
		host?: string

		// The technology type.
		technology_type?: string
	})

	_#defs: "/$defs/properties/$defs/goldengate_connection_properties": close({
		// The name of the GoldengateDeployment associated with the
		// GoldengateConnection.
		// Format:
		// projects/{project}/locations/{location}/goldengateDeployments/{goldengate_deployment}
		goldengate_deployment_id?: string

		// The host of the GoldengateConnection.
		host?: string

		// Input only. The password used to connect to the Oracle
		// Goldengate in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password used to connect to the Oracle Goldengate.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The port of the GoldengateConnection.
		port?: number

		// The technology type.
		technology_type?: string

		// The username credential.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/google_big_query_connection_properties": close({
		// The service account key file Cloud Storage containing the
		// credentials required to use Google BigQuery.
		service_account_key_file?: string

		// The technology type.
		technology_type?: string
	})

	_#defs: "/$defs/properties/$defs/google_cloud_storage_connection_properties": close({
		// The service account key Cloud Storage file containing the
		// credentials required to use Google Cloud Storage.
		service_account_key_file?: string

		// The technology type.
		technology_type?: string
	})

	_#defs: "/$defs/properties/$defs/google_pubsub_connection_properties": close({
		// The content of the service account key file containing the
		// credentials required to use Google Pub/Sub.
		service_account_key_file?: string

		// The technology type of GooglePubsubConnection.
		technology_type?: string
	})

	_#defs: "/$defs/properties/$defs/hdfs_connection_properties": close({
		// The content of the Hadoop Distributed File System
		// configuration file (core-site.xml).
		core_site_xml?: string

		// The technology type of HdfsConnection.
		technology_type?: string
	})

	_#defs: "/$defs/properties/$defs/iceberg_connection_properties": close({
		catalog!: matchN(1, [_#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog"]])
		storage!: matchN(1, [_#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/storage", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/storage"]])

		// The technology type of Iceberg connection.
		technology_type!: string
	})

	_#defs: "/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog": close({
		glue_iceberg_catalog?: matchN(1, [_#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/glue_iceberg_catalog", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/glue_iceberg_catalog"]])
		nessie_iceberg_catalog?: matchN(1, [_#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/nessie_iceberg_catalog", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/nessie_iceberg_catalog"]])
		polaris_iceberg_catalog?: matchN(1, [_#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/polaris_iceberg_catalog", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/polaris_iceberg_catalog"]])
		rest_iceberg_catalog?: matchN(1, [_#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/rest_iceberg_catalog", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/rest_iceberg_catalog"]])

		// The type of Iceberg catalog.
		// Possible values:
		// GLUE
		// HADOOP
		// NESSIE
		// POLARIS
		// REST
		catalog_type!: string
	})

	_#defs: "/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/glue_iceberg_catalog": close({
		// The catalog ID of Glue.
		glue_id!: string
	})

	_#defs: "/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/nessie_iceberg_catalog": close({
		// The Nessie branch.
		branch!: string

		// The Nessie uri.
		uri!: string
	})

	_#defs: "/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/polaris_iceberg_catalog": close({
		// The Polaris client ID.
		client_id!: string

		// The Polaris client secret.
		client_secret?: string

		// The catalog name within Polaris.
		polaris_catalog!: string

		// The Polaris principal role.
		principal_role!: string

		// The Polaris uri.
		uri!: string
	})

	_#defs: "/$defs/properties/$defs/iceberg_connection_properties/$defs/catalog/$defs/rest_iceberg_catalog": close({
		// The content of the configuration file containing additional
		// properties for
		// the REST catalog.
		properties?: string

		// The REST uri.
		uri!: string
	})

	_#defs: "/$defs/properties/$defs/iceberg_connection_properties/$defs/storage": close({
		amazon_s3_iceberg_storage?: matchN(1, [_#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/storage/$defs/amazon_s3_iceberg_storage", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/storage/$defs/amazon_s3_iceberg_storage"]])
		azure_data_lake_storage_iceberg_storage?: matchN(1, [_#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/storage/$defs/azure_data_lake_storage_iceberg_storage", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/storage/$defs/azure_data_lake_storage_iceberg_storage"]])
		google_cloud_storage_iceberg_storage?: matchN(1, [_#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/storage/$defs/google_cloud_storage_iceberg_storage", list.MaxItems(1) & [..._#defs."/$defs/properties/$defs/iceberg_connection_properties/$defs/storage/$defs/google_cloud_storage_iceberg_storage"]])

		// The type of Iceberg storage.
		// Possible values:
		// AMAZON_S3
		// GOOGLE_CLOUD_STORAGE
		// AZURE_DATA_LAKE_STORAGE
		storage_type!: string
	})

	_#defs: "/$defs/properties/$defs/iceberg_connection_properties/$defs/storage/$defs/amazon_s3_iceberg_storage": close({
		// The access key ID of Amazon S3.
		access_key_id!: string

		// The bucket of Amazon S3.
		bucket!: string

		// The endpoint of Amazon S3.
		endpoint?: string

		// The region of Amazon S3.
		region!: string

		// The scheme type of Amazon S3.
		// Possible values:
		// S3
		// S3A
		scheme_type!: string

		// The secret access key of Amazon S3.
		secret_access_key_secret?: string
	})

	_#defs: "/$defs/properties/$defs/iceberg_connection_properties/$defs/storage/$defs/azure_data_lake_storage_iceberg_storage": close({
		// The account key of Azure Data Lake Storage.
		account_key_secret?: string

		// The account of Azure Data Lake Storage.
		azure_account!: string

		// The container of Azure Data Lake Storage.
		container!: string

		// The endpoint of Azure Data Lake Storage.
		endpoint?: string
	})

	_#defs: "/$defs/properties/$defs/iceberg_connection_properties/$defs/storage/$defs/google_cloud_storage_iceberg_storage": close({
		// The bucket of Google Cloud Storage.
		bucket!: string

		// The project ID of Google Cloud Storage.
		project_id!: string

		// The service account key file of Google Cloud Storage.
		service_account_key_file?: string
	})

	_#defs: "/$defs/properties/$defs/java_message_service_connection_properties": close({
		// Authentication type for Java Message Service.
		// Possible values:
		// NONE
		// BASIC
		authentication_type?: string

		// The Java class implementing javax.jms.ConnectionFactory
		// interface supplied
		// by the JMS provider.
		connection_factory?: string

		// Connection URL of the Java Message Service, specifying the
		// protocol, host,
		// and port. e.g.: 'mq://myjms.host.domain:7676'
		connection_url?: string

		// The Connection Factory can be looked up using this name.
		// e.g.: 'ConnectionFactory'
		jndi_connection_factory?: string

		// The implementation of javax.naming.spi.InitialContextFactory
		// interface
		// used to obtain initial naming context.
		jndi_initial_context_factory?: string

		// The URL that Java Message Service will use to contact the JNDI
		// provider.
		// e.g.:
		// 'tcp://myjms.host.domain:61616?jms.prefetchPolicy.all=1000'
		jndi_provider_url?: string

		// The password associated to the principal.
		jndi_security_credentials_secret?: string

		// Specifies the identity of the principal (user) to be
		// authenticated.
		jndi_security_principal?: string

		// The content of the KeyStore file.
		key_store_file?: string

		// Input only. The KeyStore password in plain text.
		key_store_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the KeyStore password.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		key_store_password_secret_version?: string

		// Input only. The password Oracle Goldengate uses to connect the
		// Java Message Service
		// in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses to connect the associated
		// Java
		// Message Service.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// Security protocol for Java Message Service.
		// Possible values:
		// PLAIN
		// TLS
		// MTLS
		security_protocol?: string

		// Input only. The password for the cert inside of the KeyStore in
		// plain text.
		ssl_key_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password for the cert inside of the KeyStore.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		ssl_key_password_secret_version?: string

		// The technology type of JavaMessageServiceConnection.
		technology_type?: string

		// The content of the TrustStore file.
		trust_store_file?: string

		// Input only. The TrustStore password in plain text.
		trust_store_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the TrustStore password.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		trust_store_password_secret_version?: string

		// If set to true, Java Naming and Directory Interface (JNDI)
		// properties
		// should be provided.
		use_jndi?: bool

		// The username Oracle Goldengate uses to connect to the Java
		// Message
		// Service.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/kafka_connection_properties": close({
		bootstrap_servers?: matchN(1, [_#defs."/$defs/properties/$defs/kafka_connection_properties/$defs/bootstrap_servers", [..._#defs."/$defs/properties/$defs/kafka_connection_properties/$defs/bootstrap_servers"]])

		// The OCID of the Kafka cluster being referenced from OCI
		// Streaming with
		// Apache Kafka.
		cluster_id?: string

		// The content of the consumer.properties file.
		consumer_properties_file?: string

		// The content of the KeyStore file.
		key_store_file?: string

		// Input only. The KeyStore password in plain text.
		key_store_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the KeyStore password.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		key_store_password_secret_version?: string

		// Input only. The password for Kafka basic/SASL auth in plain
		// text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password for Kafka basic/SASL auth.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The content of the producer.properties file.
		producer_properties_file?: string

		// Security Type for Kafka.
		// Possible values:
		// SSL
		// SASL_SSL
		// PLAINTEXT
		// SASL_PLAINTEXT
		security_protocol?: string

		// Input only. The password for the cert inside of the KeyStore in
		// plain text.
		ssl_key_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password for the cert inside of the KeyStore.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		ssl_key_password_secret_version?: string

		// The OCID of the stream pool being referenced.
		stream_pool_id?: string

		// The technology type of KafkaConnection.
		technology_type?: string

		// The content of the TrustStore file.
		trust_store_file?: string

		// Input only. The TrustStore password in plain text.
		trust_store_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the TrustStore password.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		trust_store_password_secret_version?: string

		// Specifies that the user intends to authenticate to the instance
		// using a
		// resource principal. Applicable only for OCI Streaming
		// connections.
		use_resource_principal?: bool

		// The username Oracle Goldengate uses to connect the associated
		// system of
		// the given technology.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/kafka_connection_properties/$defs/bootstrap_servers": close({
		// The name or address of a host.
		host!: string

		// The port of an endpoint usually specified for a connection.
		port?: number

		// The private IP address of the connection's endpoint in the
		// customer's VCN,
		// typically a database endpoint or a big data endpoint (e.g.
		// Kafka bootstrap
		// server). In case the privateIp is provided, the subnetId must
		// also be
		// provided. In case the privateIp (and the subnetId) is not
		// provided it is
		// assumed the datasource is publicly accessible. In case the
		// connection is
		// accessible only privately, the lack of privateIp will result in
		// not being
		// able to access the connection.
		private_ip_address?: string
	})

	_#defs: "/$defs/properties/$defs/kafka_schema_registry_connection_properties": close({
		// Used authentication mechanism to access Schema Registry.
		// Possible values:
		// NONE
		// BASIC
		// MUTUAL
		authentication_type?: string

		// The content of the KeyStore file.
		key_store_file?: string

		// Input only. The KeyStore password in plain text.
		key_store_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the KeyStore password.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		key_store_password_secret_version?: string

		// Input only. The password to access Schema Registry in plain
		// text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password to access Schema Registry using basic
		// authentication.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// Input only. The password for the cert inside the KeyStore in
		// plain text.
		ssl_key_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password for the cert inside the KeyStore.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		ssl_key_password_secret_version?: string

		// The technology type of KafkaSchemaRegistryConnection.
		technology_type?: string

		// The content of the TrustStore file.
		trust_store_file?: string

		// Input only. The TrustStore password in plain text.
		trust_store_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the TrustStore password.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		trust_store_password_secret_version?: string

		// Kafka Schema Registry URL.
		// e.g.: 'https://server1.us.oracle.com:8081'
		url?: string

		// The username to access Schema Registry using basic
		// authentication.
		// This value is injected into
		// 'schema.registry.basic.auth.user.info=user:password'
		// configuration
		// property.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/microsoft_fabric_connection_properties": close({
		// Azure client ID of the application.
		client_id?: string

		// Client secret associated with the client id.
		client_secret?: string

		// Optional Microsoft Fabric service endpoint.
		// Default value: https://onelake.dfs.fabric.microsoft.com
		endpoint?: string

		// The technology type of MicrosoftFabricConnection.
		technology_type?: string

		// Azure tenant ID of the application.
		tenant_id?: string
	})

	_#defs: "/$defs/properties/$defs/microsoft_sqlserver_connection_properties": close({
		additional_attributes?: matchN(1, [_#defs."/$defs/properties/$defs/microsoft_sqlserver_connection_properties/$defs/additional_attributes", [..._#defs."/$defs/properties/$defs/microsoft_sqlserver_connection_properties/$defs/additional_attributes"]])

		// The name of the database.
		database?: string

		// The name or address of a host.
		host?: string

		// Input only. The password Oracle Goldengate uses for Microsoft
		// SQL Server connection
		// in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses for Microsoft SQL Server
		// connection.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The port of an endpoint usually specified for a connection.
		port?: number

		// Security Type for Microsoft SQL Server.
		// Possible values:
		// PLAIN
		// TLS
		security_protocol?: string

		// If set to true, the driver validates the certificate that is
		// sent by the
		// database server.
		server_certificate_validation_required?: bool

		// Database Certificate - The content of a .pem or .crt file
		// containing the server public key (for 1-way SSL).
		ssl_ca_file?: string

		// The technology type of MicrosoftSqlserverConnection.
		technology_type?: string

		// The username Oracle Goldengate uses to connect to the Microsoft
		// SQL
		// Server.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/microsoft_sqlserver_connection_properties/$defs/additional_attributes": close({
		// The name of the property entry.
		key!: string

		// The value of the property entry.
		value!: string
	})

	_#defs: "/$defs/properties/$defs/mongodb_connection_properties": close({
		// MongoDB connection string.
		// e.g.: 'mongodb://mongodb0.example.com:27017/recordsrecords'
		connection_string?: string

		// The OCID of the Oracle Autonomous Json Database.
		database_id?: string

		// Input only. The password Oracle Goldengate uses to connect the
		// Mongodb connection in
		// plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses to connect the Mongodb
		// connection.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// Security Type for MongoDB.
		// Possible values:
		// PLAIN
		// TLS
		// MTLS
		security_protocol?: string

		// The technology type of MongodbConnection.
		technology_type?: string

		// Database Certificate - The content of a .pem file,
		// containing the server public key (for 1 and 2-way SSL).
		tls_ca_file?: string

		// Client Certificate - The content of a .pem file, containing
		// the client public key (for 2-way SSL).
		tls_certificate_key_file?: string

		// Input only. The Client Certificate key file password in plain
		// text.
		tls_certificate_key_file_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the Client Certificate key file password in Secret Manager.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		tls_certificate_key_file_password_secret_version?: string

		// The username Oracle Goldengate uses to connect to the database.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/mysql_connection_properties": close({
		additional_attributes?: matchN(1, [_#defs."/$defs/properties/$defs/mysql_connection_properties/$defs/additional_attributes", [..._#defs."/$defs/properties/$defs/mysql_connection_properties/$defs/additional_attributes"]])

		// The name of the database.
		database?: string

		// The OCID of the database system being referenced.
		db_system_id?: string

		// The name or address of a host.
		host?: string

		// Input only. The password Oracle Goldengate uses to connect to
		// MySQL in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses to connect to MySQL.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The port of an endpoint usually specified for a connection.
		port?: number

		// Security Type for MySQL.
		// Possible values:
		// PLAIN
		// TLS
		// MTLS
		security_protocol?: string

		// Database Certificate - The content of a .pem or .crt file
		// containing the server public key (for 1 and 2-way SSL).
		ssl_ca_file?: string

		// Client Certificate - The content of a .pem or .crt file
		// containing the client public key (for 2-way SSL).
		ssl_cert_file?: string

		// The list of certificates revoked by the trusted
		// certificate authorities (Trusted CA).
		ssl_crl_file?: string

		// Client Key - The content of a .pem or .crt file containing
		// the client private key (for 2-way SSL).
		ssl_key_file?: string

		// SSL modes for MySQL.
		// Possible values:
		// DISABLED
		// PREFERRED
		// REQUIRED
		// VERIFY_CA
		// VERIFY_IDENTITY
		ssl_mode?: string

		// The technology type of MysqlConnection.
		technology_type?: string

		// The username Oracle Goldengate uses to connect the associated
		// system of
		// the given technology.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/mysql_connection_properties/$defs/additional_attributes": close({
		// The name of the property entry.
		key!: string

		// The value of the property entry.
		value!: string
	})

	_#defs: "/$defs/properties/$defs/oci_object_storage_connection_properties": close({
		// The content of the private key file (PEM file)
		// corresponding to the API key of the fingerprint.
		private_key_file?: string

		// The passphrase of the private key.
		private_key_passphrase_secret?: string

		// The fingerprint of the API Key of the user specified by the
		// userId.
		public_key_fingerprint?: string

		// The name of the region of OCI Object Storage. e.g.:
		// us-ashburn-1
		// If the region is not provided, backend will default to the
		// default region.
		region?: string

		// The technology type of OciObjectStorageConnection.
		technology_type?: string

		// The OCID of the related OCI tenancy.
		tenancy_id?: string

		// Specifies that the user intends to authenticate to the instance
		// using a
		// resource principal.
		use_resource_principal?: bool

		// The OCID of the OCI user who will access the Object Storage.
		// The user must have write access to the bucket they want to
		// connect to.
		user_id?: string
	})

	_#defs: "/$defs/properties/$defs/oracle_ai_data_platform_connection_properties": close({
		// Connection URL. It must start with 'jdbc:spark://'
		connection_url?: string

		// The content of the private key file (PEM file)
		// corresponding to the API key of the fingerprint.
		private_key_file?: string

		// The passphrase of the private key.
		private_key_passphrase_secret?: string

		// The fingerprint of the API Key of the user specified by the
		// user_id.
		public_key_fingerprint?: string

		// The name of the region. e.g.: us-ashburn-1
		region?: string

		// The technology type of OracleAiDataPlatformConnection.
		technology_type?: string

		// The OCID of the related OCI tenancy.
		tenancy_id?: string

		// Specifies that the user intends to authenticate to the instance
		// using a
		// resource principal.
		use_resource_principal?: bool

		// The OCID of the OCI user who will access.
		user_id?: string
	})

	_#defs: "/$defs/properties/$defs/oracle_connection_properties": close({
		// Authentication mode.
		// Possible values:
		// TLS
		// MTLS
		authentication_mode?: string

		// Connect descriptor or Easy Connect Naming method used to
		// connect to a
		// database.
		connection_string?: string

		// Database instance id of database in Oracle Database @ Google
		// Cloud.
		// If gcp_oracle_database_id is provided, connection_string must
		// be empty.
		gcp_oracle_database_id?: string

		// Input only. The password Oracle Goldengate uses in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The mode of the database connection session to be established
		// by the data
		// client.
		// Possible values:
		// DIRECT
		// REDIRECT
		session_mode?: string

		// The technology type.
		technology_type?: string

		// The username Oracle Goldengate uses to connect.
		username?: string

		// The wallet contents Oracle Goldengate uses to make connections
		// to a
		// database.
		wallet_file?: string
	})

	_#defs: "/$defs/properties/$defs/oracle_nosql_connection_properties": close({
		// The content of the private key file (PEM file)
		// corresponding to the API key of the fingerprint.
		private_key_file?: string

		// The passphrase of the private key.
		private_key_passphrase_secret?: string

		// The fingerprint of the API Key of the user specified by the
		// userId.
		public_key_fingerprint?: string

		// The name of the region. e.g.: us-ashburn-1
		region?: string

		// The technology type of OracleNosqlConnection.
		technology_type?: string

		// The OCID of the OCI tenancy.
		tenancy_id?: string

		// Specifies that the user intends to authenticate to the instance
		// using a
		// resource principal.
		use_resource_principal?: bool

		// The OCID of the OCI user who will access the Oracle NoSQL
		// database.
		user_id?: string
	})

	_#defs: "/$defs/properties/$defs/postgresql_connection_properties": close({
		additional_attributes?: matchN(1, [_#defs."/$defs/properties/$defs/postgresql_connection_properties/$defs/additional_attributes", [..._#defs."/$defs/properties/$defs/postgresql_connection_properties/$defs/additional_attributes"]])

		// The name of the database.
		database?: string

		// The OCID of the database system being referenced.
		db_system_id?: string

		// The name or address of a host.
		host?: string

		// Input only. The password Oracle Goldengate uses for PostgreSQL
		// connection in plain
		// text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses for PostgreSQL connection.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The port of an endpoint usually specified for a connection.
		port?: number

		// Security protocol for PostgreSQL.
		// Possible values:
		// PLAIN
		// TLS
		// MTLS
		security_protocol?: string

		// The certificate of the trusted certificate authorities
		// (Trusted CA) for PostgreSQL.
		ssl_ca_file?: string

		// The certificate of the PostgreSQL server.
		ssl_cert_file?: string

		// The list of certificates revoked by the trusted
		// certificate authorities (Trusted CA).
		ssl_crl_file?: string

		// The private key of the PostgreSQL server.
		ssl_key_file?: string

		// SSL modes for PostgreSQL.
		// Possible values:
		// PREFER
		// REQUIRE
		// VERIFY_CA
		// VERIFY_FULL
		ssl_mode?: string

		// The technology type of PostgresqlConnection.
		technology_type?: string

		// The username Oracle Goldengate uses to connect the associated
		// system of
		// the given technology.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/postgresql_connection_properties/$defs/additional_attributes": close({
		// The name of the property entry.
		key!: string

		// The value of the property entry.
		value!: string
	})

	_#defs: "/$defs/properties/$defs/redis_connection_properties": close({
		// Authentication type for Redis.
		// Possible values:
		// NONE
		// BASIC
		authentication_type?: string

		// The content of the KeyStore file.
		key_store_file?: string

		// Input only. The KeyStore password in plain text.
		key_store_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the KeyStore password.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		key_store_password_secret_version?: string

		// Input only. The password Oracle Goldengate uses for Redis
		// connection in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses for Redis connection.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The OCID of the Redis cluster.
		redis_cluster_id?: string

		// Security protocol for Redis.
		// Possible values:
		// PLAIN
		// TLS
		// MTLS
		security_protocol?: string

		// Comma separated list of Redis server addresses, specified as
		// host:port
		// entries, where :port is optional. If port is not specified, it
		// defaults
		// to 6379. Example:
		// "server1.example.com:6379,server2.example.com:6379"
		servers?: string

		// The technology type of RedisConnection.
		technology_type?: string

		// The content of the TrustStore file.
		trust_store_file?: string

		// Input only. The TrustStore password in plain text.
		trust_store_password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the TrustStore password.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		trust_store_password_secret_version?: string

		// The username Oracle Goldengate uses to connect the associated
		// system of
		// the given technology.
		username?: string
	})

	_#defs: "/$defs/properties/$defs/snowflake_connection_properties": close({
		// Used authentication mechanism to access Snowflake.
		// Possible values:
		// BASIC
		// KEY_PAIR
		authentication_type?: string

		// JDBC connection URL.
		// e.g.:
		// 'jdbc:snowflake://.snowflakecomputing.com/?warehouse=&db='
		connection_url?: string

		// Input only. The password Oracle Goldengate uses to connect to
		// Snowflake platform
		// in plain text.
		password?: string

		// Input only. The resource name of a secret version in Secret
		// Manager which contains
		// the password Oracle Goldengate uses to connect to Snowflake
		// platform.
		// Format: projects/{project}/secrets/{secret}/versions/{version}.
		password_secret_version?: string

		// The content of private key file in PEM format.
		private_key_file?: string

		// Password if the private key file is encrypted.
		private_key_passphrase_secret?: string

		// The technology type of SnowflakeConnection.
		technology_type?: string

		// The username Oracle Goldengate uses to connect to Snowflake.
		username?: string
	})
}
