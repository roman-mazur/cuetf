package res

import "list"

#google_compute_snapshot: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_snapshot")
	close({
		// Creates the new snapshot in the snapshot chain labeled with the
		// specified name. The chain name must be 1-63 characters long and
		// comply with RFC1035. This is an uncommon option only for
		// advanced
		// service owners who needs to create separate snapshot chains,
		// for
		// example, for chargeback tracking. When you describe your
		// snapshot
		// resource, this field is visible only if it has a non-empty
		// value.
		chain_name?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource.
		description?: string

		// Size of the snapshot, specified in GB.
		disk_size_gb?: number

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The fingerprint used for optimistic locking of this resource.
		// Used
		// internally during updates.
		label_fingerprint?: string

		// Labels to apply to this Snapshot.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// A list of public visible licenses that apply to this snapshot.
		// This
		// can be because the original image had licenses attached (such
		// as a
		// Windows image). snapshotEncryptionKey nested object Encrypts
		// the
		// snapshot using a customer-supplied encryption key.
		licenses?: [...string]

		// Name of the resource; provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and match
		// the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
		// the
		// first character must be a lowercase letter, and all following
		// characters must be a dash, lowercase letter, or digit, except
		// the last
		// character, which cannot be a dash.
		name!:      string
		project?:   string
		self_link?: string

		// The unique identifier for the resource.
		snapshot_id?: number
		snapshot_encryption_key?: matchN(1, [#snapshot_encryption_key, list.MaxItems(1) & [...#snapshot_encryption_key]])
		source_disk_encryption_key?: matchN(1, [#source_disk_encryption_key, list.MaxItems(1) & [...#source_disk_encryption_key]])
		timeouts?: #timeouts

		// Indicates the type of the snapshot. Possible values:
		// ["ARCHIVE", "STANDARD"]
		snapshot_type?: string

		// A reference to the disk used to create this snapshot.
		source_disk!: string

		// A size of the storage used by the snapshot. As snapshots share
		// storage, this number is expected to change with snapshot
		// creation/deletion.
		storage_bytes?: number

		// Cloud Storage bucket storage location of the snapshot (regional
		// or multi-regional).
		storage_locations?: [...string]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// A reference to the zone where the disk is hosted.
		zone?: string
	})

	#snapshot_encryption_key: close({
		// The name of the encryption key that is stored in Google Cloud
		// KMS.
		kms_key_self_link?: string

		// The service account used for the encryption request for the
		// given KMS key.
		// If absent, the Compute Engine Service Agent service account is
		// used.
		kms_key_service_account?: string

		// Specifies a 256-bit customer-supplied encryption key, encoded
		// in
		// RFC 4648 base64 to either encrypt or decrypt this resource.
		raw_key?: string

		// Specifies an encryption key stored in Google Cloud KMS, encoded
		// in
		// RFC 4648 base64 to either encrypt or decrypt this resource.
		rsa_encrypted_key?: string

		// The RFC 4648 base64 encoded SHA-256 hash of the
		// customer-supplied
		// encryption key that protects this resource.
		sha256?: string
	})

	#source_disk_encryption_key: close({
		// The name of the encryption key that is stored in Google Cloud
		// KMS.
		kms_key_self_link?: string

		// The service account used for the encryption request for the
		// given KMS key.
		// If absent, the Compute Engine Service Agent service account is
		// used.
		kms_key_service_account?: string

		// Specifies a 256-bit customer-supplied encryption key, encoded
		// in
		// RFC 4648 base64 to either encrypt or decrypt this resource.
		raw_key?: string

		// Specifies an encryption key stored in Google Cloud KMS, encoded
		// in
		// RFC 4648 base64 to either encrypt or decrypt this resource.
		rsa_encrypted_key?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
