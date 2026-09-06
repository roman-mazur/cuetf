package res

import "list"

google_observability_bucket: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_observability_bucket")
	close({
		cmek_settings?: matchN(1, [#cmek_settings, list.MaxItems(1) & [...#cmek_settings]])
		timeouts?: #timeouts

		// A client-assigned identifier for the bucket.
		bucket_id!: string

		// Output only. Create timestamp.
		create_time?: string

		// Output only. Delete timestamp.
		delete_time?: string

		// Description of the bucket.
		description?: string

		// User friendly display name.
		display_name?: string
		id?:           string

		// The location of the bucket.
		location!: string

		// Identifier. Name of the bucket. The format is:
		// projects/[PROJECT_ID]/locations/[LOCATION]/buckets/[BUCKET_ID]
		name?: string

		// Output only. Timestamp when the bucket in soft-deleted state is purged.
		purge_time?: string
		project?:    string

		// Output only. Update timestamp.
		update_time?: string
	})

	#cmek_settings: close({
		// The resource name for the configured Cloud KMS key. The format is:
		// projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]
		kms_key?: string

		// The CryptoKeyVersion resource name for the configured Cloud KMS key. The
		// format is:
		// projects/[PROJECT_ID]/locations/[LOCATION]/keyRings/[KEYRING]/cryptoKeys/[KEY]/cryptoKeyVersions/[VERSION]
		kms_key_version?: string

		// The service account used to access the key.
		service_account_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
