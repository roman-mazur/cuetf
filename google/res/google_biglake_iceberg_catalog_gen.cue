package res

#google_biglake_iceberg_catalog: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_biglake_iceberg_catalog")
	close({
		// Output only. The service account used for credential vending.
		// It might be empty if credential vending was never enabled for
		// the catalog.
		biglake_service_account?: string

		// The catalog type of the IcebergCatalog. Currently only supports
		// the type for Google Cloud Storage Buckets. Possible values:
		// ["CATALOG_TYPE_GCS_BUCKET"]
		catalog_type!: string

		// Output only. The creation time of the IcebergCatalog.
		create_time?: string

		// The credential mode used for the catalog.
		// CREDENTIAL_MODE_END_USER - End user credentials, default. The
		// authenticating user must have access to the catalog resources
		// and the corresponding Google Cloud Storage files.
		// CREDENTIAL_MODE_VENDED_CREDENTIALS - Use credential vending.
		// The authenticating user must have access to the catalog
		// resources and the system will provide the caller with
		// downscoped credentials to access the Google Cloud Storage
		// files. All table operations in this mode would require
		// 'X-Iceberg-Access-Delegation' header with 'vended-credentials'
		// value included. System will generate a service account and the
		// catalog administrator must grant the service account
		// appropriate permissions. Possible values:
		// ["CREDENTIAL_MODE_END_USER",
		// "CREDENTIAL_MODE_VENDED_CREDENTIALS"]
		credential_mode?: string

		// Output only. The default storage location for the catalog,
		// e.g., 'gs://my-bucket'.
		default_location?: string
		id?:               string

		// The name of the IcebergCatalog. Format:
		// projects/{project_id_or_number}/catalogs/{iceberg_catalog_id}
		name!: string

		// Output only. The replicas for the catalog metadata.
		replicas?: [...close({
			region?: string
			state?:  string
		})]
		timeouts?: #timeouts
		project?:  string

		// Output only. The GCP region(s) where the physical metadata for
		// the tables is stored, e.g. 'us-central1', 'nam4' or 'us'. This
		// will contain one value for all locations, except for the
		// catalogs that are configured to use custom dual region
		// buckets.
		storage_regions?: [...string]

		// Output only. The last modification time of the IcebergCatalog.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
