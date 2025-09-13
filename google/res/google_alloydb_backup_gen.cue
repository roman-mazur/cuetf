package res

import "list"

#google_alloydb_backup: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_alloydb_backup")
	close({
		// Annotations to allow client tools to store small amount of
		// arbitrary data. This is distinct from labels.
		// https://google.aip.dev/128
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// The ID of the alloydb backup.
		backup_id!: string

		// The full resource name of the backup source cluster (e.g.,
		// projects/{project}/locations/{location}/clusters/{clusterId}).
		cluster_name!: string

		// Output only. The system-generated UID of the cluster which was
		// used to create this resource.
		cluster_uid?: string

		// Output only. Create time stamp. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		create_time?: string

		// Output only. Delete time stamp. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		delete_time?: string

		// User-provided description of the backup.
		description?: string

		// User-settable and human-readable display name for the Backup.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// EncryptionInfo describes the encryption information of a
		// cluster or a backup.
		encryption_info?: [...close({
			encryption_type?: string
			kms_key_versions?: [...string]
		})]

		// For Resource freshness validation (https://google.aip.dev/154)
		etag?: string

		// Output only. The QuantityBasedExpiry of the backup, specified
		// by the backup's retention policy.
		// Once the expiry quantity is over retention, the backup is
		// eligible to be garbage collected.
		expiry_quantity?: [...close({
			retention_count?:       number
			total_retention_count?: number
		})]

		// Output only. The time at which after the backup is eligible to
		// be garbage collected.
		// It is the duration specified by the backup's retention policy,
		// added to the backup's createTime.
		expiry_time?: string
		id?:          string
		encryption_config?: matchN(1, [#encryption_config, list.MaxItems(1) & [...#encryption_config]])
		timeouts?: #timeouts

		// User-defined labels for the alloydb backup. An object
		// containing a list of "key": value pairs. Example: { "name":
		// "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the alloydb backup should reside.
		location!: string

		// Output only. The name of the backup resource with the format: *
		// projects/{project}/locations/{region}/backups/{backupId}
		name?:    string
		project?: string

		// Output only. Reconciling
		// (https://google.aip.dev/128#reconciliation), if true,
		// indicates that the service is actively updating the resource.
		// This can happen due to user-triggered updates or system actions
		// like failover or maintenance.
		reconciling?: bool

		// Output only. The size of the backup in bytes.
		size_bytes?: string

		// Output only. The current state of the backup.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The backup type, which suggests the trigger for the backup.
		// Possible values: ["TYPE_UNSPECIFIED", "ON_DEMAND",
		// "AUTOMATED", "CONTINUOUS"]
		type?: string

		// Output only. The system-generated UID of the resource. The UID
		// is assigned when the resource is created, and it is retained
		// until it is deleted.
		uid?: string

		// Output only. Update time stamp. A timestamp in RFC3339 UTC
		// "Zulu" format, with nanosecond resolution and up to nine
		// fractional digits.
		// Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		update_time?: string
	})

	#encryption_config: close({
		// The fully-qualified resource name of the KMS key. Each Cloud
		// KMS key is regionalized and has the following format:
		// projects/[PROJECT]/locations/[REGION]/keyRings/[RING]/cryptoKeys/[KEY_NAME].
		kms_key_name?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
