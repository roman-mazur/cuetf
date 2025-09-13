package res

import "list"

#google_logging_folder_bucket_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_logging_folder_bucket_config")
	close({
		// The name of the logging bucket. Logging automatically creates
		// two log buckets: _Required and _Default.
		bucket_id!: string

		// An optional description for this bucket.
		description?: string

		// The parent resource that contains the logging bucket.
		folder!: string

		// The bucket's lifecycle such as active or deleted.
		lifecycle_state?: string
		id?:              string

		// The location of the bucket.
		location!: string
		cmek_settings?: matchN(1, [#cmek_settings, list.MaxItems(1) & [...#cmek_settings]])
		index_configs?: matchN(1, [#index_configs, list.MaxItems(20) & [...#index_configs]])

		// The resource name of the bucket
		name?: string

		// Logs will be retained by default for this amount of time, after
		// which they will automatically be deleted. The minimum
		// retention period is 1 day. If this value is set to zero at
		// bucket creation time, the default time of 30 days will be
		// used.
		retention_days?: number
	})

	#cmek_settings: close({
		// The resource name for the configured Cloud KMS key.
		// KMS key name format:
		// "projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]"
		// To enable CMEK for the bucket, set this field to a valid
		// kmsKeyName for which the associated service account has the
		// required cloudkms.cryptoKeyEncrypterDecrypter roles assigned
		// for the key.
		// The Cloud KMS key used by the bucket can be updated by changing
		// the kmsKeyName to a new valid key name. Encryption operations
		// that are in progress will be completed with the key that was
		// in use when they started. Decryption operations will be
		// completed using the key that was used at the time of
		// encryption unless access to that key has been revoked.
		// See [Enabling CMEK for Logging
		// Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage)
		// for more information.
		kms_key_name!: string

		// The CryptoKeyVersion resource name for the configured Cloud KMS
		// key.
		// KMS key name format:
		// "projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]/cryptoKeyVersions/[VERSION]"
		// For example:
		// "projects/my-project/locations/us-central1/keyRings/my-ring/cryptoKeys/my-key/cryptoKeyVersions/1"
		// This is a read-only field used to convey the specific
		// configured CryptoKeyVersion of kms_key that has been
		// configured. It will be populated in cases where the CMEK
		// settings are bound to a single key version.
		kms_key_version_name?: string

		// The resource name of the CMEK settings.
		name?: string

		// The service account associated with a project for which CMEK
		// will apply.
		// Before enabling CMEK for a logging bucket, you must first
		// assign the cloudkms.cryptoKeyEncrypterDecrypter role to the
		// service account associated with the project for which CMEK
		// will apply. Use
		// [v2.getCmekSettings](https://cloud.google.com/logging/docs/reference/v2/rest/v2/TopLevel/getCmekSettings#google.logging.v2.ConfigServiceV2.GetCmekSettings)
		// to obtain the service account ID.
		// See [Enabling CMEK for Logging
		// Buckets](https://cloud.google.com/logging/docs/routing/managed-encryption-storage)
		// for more information.
		service_account_id?: string
	})

	#index_configs: close({
		// The LogEntry field path to index.
		field_path!: string

		// The type of data in this index
		// Note that some paths are automatically indexed, and other paths
		// are not eligible for indexing. See [indexing documentation](
		// https://cloud.google.com/logging/docs/view/advanced-queries#indexed-fields)
		// for details.
		// For example: jsonPayload.request.status
		type!: string
	})
}
