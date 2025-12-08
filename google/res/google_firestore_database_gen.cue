package res

import "list"

#google_firestore_database: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_firestore_database")
	close({
		// The App Engine integration mode to use for this database.
		// Possible values: ["ENABLED", "DISABLED"]
		app_engine_integration_mode?: string

		// The concurrency control mode to use for this database. Possible
		// values: ["OPTIMISTIC", "PESSIMISTIC",
		// "OPTIMISTIC_WITH_ENTITY_GROUPS"]
		concurrency_mode?: string

		// Output only. The timestamp at which this database was created.
		create_time?: string

		// The database edition. Possible values: ["STANDARD",
		// "ENTERPRISE"]
		database_edition?: string

		// State of delete protection for the database.
		// When delete protection is enabled, this database cannot be
		// deleted.
		// The default value is 'DELETE_PROTECTION_STATE_UNSPECIFIED',
		// which is currently equivalent to 'DELETE_PROTECTION_DISABLED'.
		// **Note:** Additionally, to delete this database using
		// 'terraform destroy', 'deletion_policy' must be set to
		// 'DELETE'. Possible values:
		// ["DELETE_PROTECTION_STATE_UNSPECIFIED",
		// "DELETE_PROTECTION_ENABLED", "DELETE_PROTECTION_DISABLED"]
		delete_protection_state?: string

		// Deletion behavior for this database.
		// If the deletion policy is 'ABANDON', the database will be
		// removed from Terraform state but not deleted from Google Cloud
		// upon destruction.
		// If the deletion policy is 'DELETE', the database will both be
		// removed from Terraform state and deleted from Google Cloud
		// upon destruction.
		// The default value is 'ABANDON'.
		// See also 'delete_protection'.
		deletion_policy?: string

		// Output only. The earliest timestamp at which older versions of
		// the data can be read from the database. See
		// versionRetentionPeriod above; this field is populated with now
		// - versionRetentionPeriod.
		// This value is continuously updated, and becomes stale the
		// moment it is queried. If you are using this value to recover
		// data, make sure to account for the time from the moment when
		// the value is queried to the moment when you initiate the
		// recovery.
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to nine fractional digits. Examples:
		// "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
		earliest_version_time?: string

		// Output only. This checksum is computed by the server based on
		// the value of other fields,
		// and may be sent on update and delete requests to ensure the
		// client has an
		// up-to-date value before proceeding.
		etag?: string
		id?:   string

		// Output only. The keyPrefix for this database.
		// This keyPrefix is used, in combination with the project id
		// ("~") to construct the application id
		// that is returned from the Cloud Datastore APIs in Google App
		// Engine first generation runtimes.
		// This value may be empty in which case the appid to use for
		// URL-encoded keys is the project_id (eg: foo instead of v~foo).
		key_prefix?: string

		// The location of the database. Available locations are listed at
		// https://cloud.google.com/firestore/docs/locations.
		location_id!: string

		// The ID to use for the database, which will become the final
		// component of the database's resource name. This value should be
		// 4-63
		// characters. Valid characters are /[a-z][0-9]-/ with first
		// character
		// a letter and the last a letter or a number. Must not be
		// UUID-like /[0-9a-f]{8}(-[0-9a-f]{4}){3}-[0-9a-f]{12}/.
		// "(default)" database id is also valid.
		name!: string
		cmek_config?: matchN(1, [#cmek_config, list.MaxItems(1) & [...#cmek_config]])
		timeouts?: #timeouts

		// Whether to enable the PITR feature on this database.
		// If 'POINT_IN_TIME_RECOVERY_ENABLED' is selected, reads are
		// supported on selected versions of the data from within the
		// past 7 days.
		// versionRetentionPeriod and earliestVersionTime can be used to
		// determine the supported versions. These include reads against
		// any timestamp within the past hour
		// and reads against 1-minute snapshots beyond 1 hour and within 7
		// days.
		// If 'POINT_IN_TIME_RECOVERY_DISABLED' is selected, reads are
		// supported on any version of the data from within the past 1
		// hour. Default value: "POINT_IN_TIME_RECOVERY_DISABLED"
		// Possible values: ["POINT_IN_TIME_RECOVERY_ENABLED",
		// "POINT_IN_TIME_RECOVERY_DISABLED"]
		point_in_time_recovery_enablement?: string
		project?:                           string

		// Input only. A map of resource manager tags. Resource manager
		// tag keys
		// and values have the same definition as resource manager tags.
		// Keys must be in the format tagKeys/{tag_key_id}, and values are
		// in the format tagValues/456.
		// The field is ignored when empty. The field is immutable and
		// causes
		// resource replacement when mutated. To apply tags to an existing
		// resource, see
		// the 'google_tags_tag_value' resource.
		tags?: [string]: string

		// The type of the database.
		// See
		// https://cloud.google.com/datastore/docs/firestore-or-datastore
		// for information about how to choose. Possible values:
		// ["FIRESTORE_NATIVE", "DATASTORE_MODE"]
		type!: string

		// Output only. The system-generated UUID4 for this Database.
		uid?: string

		// Output only. The timestamp at which this database was most
		// recently updated.
		update_time?: string

		// Output only. The period during which past versions of data are
		// retained in the database.
		// Any read or query can specify a readTime within this window,
		// and will read the state of the database at that time.
		// If the PITR feature is enabled, the retention period is 7 days.
		// Otherwise, the retention period is 1 hour.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		version_retention_period?: string
	})

	#cmek_config: close({
		// Currently in-use KMS key versions
		// (https://cloud.google.com/kms/docs/resource-hierarchy#key_versions).
		// During key rotation
		// (https://cloud.google.com/kms/docs/key-rotation), there can be
		// multiple in-use key versions.
		//
		// The expected format is
		// 'projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{key_version}'.
		active_key_version?: [...string]

		// The resource ID of a Cloud KMS key. If set, the database
		// created will
		// be a Customer-managed Encryption Key (CMEK) database encrypted
		// with
		// this key. This feature is allowlist only in initial launch.
		//
		// Only keys in the same location as this database are allowed to
		// be used
		// for encryption. For Firestore's nam5 multi-region, this
		// corresponds to Cloud KMS
		// multi-region us. For Firestore's eur3 multi-region, this
		// corresponds to
		// Cloud KMS multi-region europe. See
		// https://cloud.google.com/kms/docs/locations.
		//
		// This value should be the KMS key resource ID in the format of
		// 'projects/{project_id}/locations/{kms_location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}'.
		// How to retrieve this resource ID is listed at
		// https://cloud.google.com/kms/docs/getting-resource-ids#getting_the_id_for_a_key_and_version.
		kms_key_name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
