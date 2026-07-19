package res

import "list"

google_biglake_iceberg_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_iceberg_catalog")
	close({
		federated_catalog_options?: matchN(1, [#federated_catalog_options, list.MaxItems(1) & [...#federated_catalog_options]])
		restricted_locations_config?: matchN(1, [#restricted_locations_config, list.MaxItems(1) & [...#restricted_locations_config]])
		timeouts?: #timeouts

		// Output only. The service account used for credential vending. It might be
		// empty if credential vending was never enabled for the catalog.
		biglake_service_account?: string

		// Output only. The unique ID of the service account used for credential
		// vending. Used for federation scenarios.
		biglake_service_account_id?: string

		// The catalog type of the IcebergCatalog.
		// * 'CATALOG_TYPE_GCS_BUCKET': Google Cloud Storage bucket catalog type.
		// * 'CATALOG_TYPE_BIGLAKE': BigLake catalog type.
		// * 'CATALOG_TYPE_FEDERATED': Federated catalog type, for integrating with
		// external Iceberg REST Catalogs such as Databricks Unity Catalog or AWS Glue.
		// Possible values: ["CATALOG_TYPE_GCS_BUCKET", "CATALOG_TYPE_BIGLAKE",
		// "CATALOG_TYPE_FEDERATED"]
		catalog_type!: string

		// Output only. The creation time of the IcebergCatalog.
		create_time?: string

		// The credential mode used for the catalog. CREDENTIAL_MODE_END_USER - End user
		// credentials, default. The authenticating user must have access to the
		// catalog resources and the corresponding Google Cloud Storage files.
		// CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending. The
		// authenticating user must have access to the catalog resources and the system
		// will provide the caller with downscoped credentials to access the Google
		// Cloud Storage files. All table operations in this mode would require
		// 'X-Iceberg-Access-Delegation' header with 'vended-credentials' value
		// included. System will generate a service account and the catalog
		// administrator must grant the service account appropriate permissions.
		// Possible values: ["CREDENTIAL_MODE_END_USER",
		// "CREDENTIAL_MODE_VENDED_CREDENTIALS"]
		credential_mode?: string

		// The default storage location for the catalog, e.g., 'gs://my-bucket'.
		// Output only when the catalog type is CATALOG_TYPE_GCS_BUCKET.
		// Required when the catalog type is CATALOG_TYPE_BIGLAKE.
		default_location?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// A user-provided description of the catalog. Maximum 1024 UTF-8 characters.
		description?: string
		id?:          string

		// The name of the IcebergCatalog.
		// For CATALOG_TYPE_GCS_BUCKET typed catalogs, the name needs to be the
		// exact same value of the GCS bucket's name. For example, for a bucket:
		// gs://bucket-name, the catalog name will be exactly "bucket-name".
		name!: string

		// The primary location for mirroring the remote catalog metadata. It must be
		// a BigLake-supported location, and it should be proximate to the remote
		// catalog's location.
		primary_location?: string

		// Output only. The replicas for the catalog metadata.
		replicas?: [...close({
			region?: string
			state?:  string
		})]
		project?: string

		// Output only. The GCP region(s) where the physical metadata for the tables is
		// stored, e.g. 'us-central1', 'nam4' or 'us'. This will contain one value for
		// all locations, except for the catalogs that are configured to use custom
		// dual region buckets.
		storage_regions?: [...string]

		// Output only. The last modification time of the IcebergCatalog.
		update_time?: string
	})

	#federated_catalog_options: close({
		glue_catalog_info?: matchN(1, [_#defs."/$defs/federated_catalog_options/$defs/glue_catalog_info", list.MaxItems(1) & [..._#defs."/$defs/federated_catalog_options/$defs/glue_catalog_info"]])
		refresh_options?: matchN(1, [_#defs."/$defs/federated_catalog_options/$defs/refresh_options", list.MaxItems(1) & [..._#defs."/$defs/federated_catalog_options/$defs/refresh_options"]])
		unity_catalog_info?: matchN(1, [_#defs."/$defs/federated_catalog_options/$defs/unity_catalog_info", list.MaxItems(1) & [..._#defs."/$defs/federated_catalog_options/$defs/unity_catalog_info"]])

		// Output only. The status of the most recent metadata refresh.
		refresh_status?: [...close({
			end_time?:   string
			start_time?: string
			status?: [...close({
				code?:    number
				message?: string
			})]
		})]

		// The secret resource name in Secret Manager, in the format
		// 'projects/{projectId}/locations/{location}/secrets/{secret_id}'.
		// Used to store credentials for authenticating with the remote catalog.
		secret_name?: string

		// The Service Directory service name for private network connectivity
		// through Cross-Cloud Interconnect.
		service_directory_name?: string
	})

	#restricted_locations_config: close({
		// A list of GCS locations (e.g., 'gs://my-other-bucket/...') that are
		// permitted for use by resources within this catalog. Each entry can be
		// either a GCS bucket or a path within it.
		restricted_locations?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/federated_catalog_options/$defs/glue_catalog_info": close({
		// The AWS region where the Glue catalog is located.
		aws_region!: string

		// The ARN of the AWS IAM role to assume for accessing the Glue catalog.
		aws_role_arn!: string

		// The AWS Glue warehouse identifier (account ID or S3 table bucket).
		warehouse!: string
	})

	_#defs: "/$defs/federated_catalog_options/$defs/refresh_options": close({
		refresh_schedule?: matchN(1, [_#defs."/$defs/federated_catalog_options/$defs/refresh_options/$defs/refresh_schedule", list.MaxItems(1) & [..._#defs."/$defs/federated_catalog_options/$defs/refresh_options/$defs/refresh_schedule"]])
		refresh_scope?: matchN(1, [_#defs."/$defs/federated_catalog_options/$defs/refresh_options/$defs/refresh_scope", list.MaxItems(1) & [..._#defs."/$defs/federated_catalog_options/$defs/refresh_options/$defs/refresh_scope"]])
	})

	_#defs: "/$defs/federated_catalog_options/$defs/refresh_options/$defs/refresh_schedule": close({
		// The interval between metadata refreshes, expressed as a duration
		// string (e.g., '300s').
		// The value must be at least 300s or 0s to disable refresh.
		refresh_interval?: string
	})

	_#defs: "/$defs/federated_catalog_options/$defs/refresh_options/$defs/refresh_scope": close({
		// A list of namespace filters to limit which namespaces are
		// synchronized from the remote catalog.
		namespace_filters?: [...string]
	})

	_#defs: "/$defs/federated_catalog_options/$defs/unity_catalog_info": close({
		// The name of the catalog within the Unity Catalog instance.
		catalog_name!: string

		// The Databricks workspace instance name.
		instance_name!: string

		// The application ID of the Databricks service principal for OIDC authentication.
		service_principal_application_id?: string
	})
}
