package res

import "list"

#google_compute_region_disk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_region_disk")
	close({
		// The access mode of the disk.
		// For example:
		// * READ_WRITE_SINGLE: The default AccessMode, means the disk can
		// be attached to single instance in RW mode.
		// * READ_WRITE_MANY: The AccessMode means the disk can be
		// attached to multiple instances in RW mode.
		// * READ_ONLY_SINGLE: The AccessMode means the disk can be
		// attached to multiple instances in RO mode.
		// The AccessMode is only valid for Hyperdisk disk types.
		access_mode?: string

		// If set to true, a snapshot of the disk will be created before
		// it is destroyed.
		// If your disk is encrypted with customer managed encryption keys
		// these will be reused for the snapshot creation.
		// The name of the snapshot by default will be
		// '{{disk-name}}-YYYYMMDD-HHmm'
		create_snapshot_before_destroy?: bool

		// This will set a custom name prefix for the snapshot that's
		// created when the disk is deleted.
		create_snapshot_before_destroy_prefix?: string

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when
		// you create the resource.
		description?: string

		// The unique identifier for the resource. This identifier is
		// defined by the server.
		disk_id?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// The fingerprint used for optimistic locking of this resource.
		// Used
		// internally during updates.
		label_fingerprint?: string

		// Labels to apply to this disk. A list of key->value pairs.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Last attach timestamp in RFC3339 text format.
		last_attach_timestamp?: string

		// Last detach timestamp in RFC3339 text format.
		last_detach_timestamp?: string

		// Any applicable license URI.
		licenses?: [...string]

		// Name of the resource. Provided by the client when the resource
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
		name!: string

		// Physical block size of the persistent disk, in bytes. If not
		// present
		// in a request, a default value is used. Currently supported
		// sizes
		// are 4096 and 16384, other sizes may be added in the future.
		// If an unsupported value is requested, the error message will
		// list
		// the supported values for the caller's project.
		physical_block_size_bytes?: number

		// Indicates how many IOPS to provision for the disk. This sets
		// the number of I/O operations per second
		// that the disk can handle. Values must be between 10,000 and
		// 120,000.
		// For more details, see the Extreme persistent disk
		// [documentation](https://cloud.google.com/compute/docs/disks/extreme-persistent-disk).
		provisioned_iops?: number
		project?:          string

		// Indicates how much throughput to provision for the disk. This
		// sets the number of throughput
		// mb per second that the disk can handle. Values must be greater
		// than or equal to 1.
		provisioned_throughput?: number
		async_primary_disk?: matchN(1, [#async_primary_disk, list.MaxItems(1) & [...#async_primary_disk]])
		disk_encryption_key?: matchN(1, [#disk_encryption_key, list.MaxItems(1) & [...#disk_encryption_key]])
		guest_os_features?: matchN(1, [#guest_os_features, [...#guest_os_features]])
		source_snapshot_encryption_key?: matchN(1, [#source_snapshot_encryption_key, list.MaxItems(1) & [...#source_snapshot_encryption_key]])

		// A reference to the region where the disk resides.
		region?: string

		// URLs of the zones where the disk should be replicated to.
		replica_zones!: [...string]

		// Size of the persistent disk, specified in GB. You can specify
		// this
		// field when creating a persistent disk using the sourceImage or
		// sourceSnapshot parameter, or specify it alone to create an
		// empty
		// persistent disk.
		//
		// If you specify this field along with sourceImage or
		// sourceSnapshot,
		// the value of sizeGb must not be less than the size of the
		// sourceImage
		// or the size of the snapshot.
		size?: number

		// The source snapshot used to create this disk. You can provide
		// this as
		// a partial or full URL to the resource. For example, the
		// following are
		// valid values:
		//
		// *
		// 'https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot'
		// * 'projects/project/global/snapshots/snapshot'
		// * 'global/snapshots/snapshot'
		// * 'snapshot'
		snapshot?:  string
		self_link?: string

		// The source disk used to create this disk. You can provide this
		// as a partial or full URL to the resource.
		// For example, the following are valid values:
		//
		// *
		// https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/disks/{disk}
		// *
		// https://www.googleapis.com/compute/v1/projects/{project}/regions/{region}/disks/{disk}
		// * projects/{project}/zones/{zone}/disks/{disk}
		// * projects/{project}/regions/{region}/disks/{disk}
		// * zones/{zone}/disks/{disk}
		// * regions/{region}/disks/{disk}
		source_disk?: string
		timeouts?:    #timeouts

		// The ID value of the disk used to create this image. This value
		// may
		// be used to determine whether the image was taken from the
		// current
		// or a previous instance of a given disk name.
		source_disk_id?: string

		// The unique ID of the snapshot used to create this disk. This
		// value
		// identifies the exact snapshot that was used to create this
		// persistent
		// disk. For example, if you created the persistent disk from a
		// snapshot
		// that was later deleted and recreated under the same name, the
		// source
		// snapshot ID would identify the exact version of the snapshot
		// that was
		// used.
		source_snapshot_id?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// URL of the disk type resource describing which disk type to use
		// to
		// create the disk. Provide this when creating the disk.
		type?: string

		// Links to the users of the disk (attached instances) in form:
		// project/zones/zone/instances/instance
		users?: [...string]
	})

	#async_primary_disk: close({
		// Primary disk for asynchronous disk replication.
		disk!: string
	})

	#disk_encryption_key: close({
		// The name of the encryption key that is stored in Google Cloud
		// KMS.
		kms_key_name?: string

		// Specifies a 256-bit customer-supplied encryption key, encoded
		// in
		// RFC 4648 base64 to either encrypt or decrypt this resource.
		raw_key?: string

		// Specifies an RFC 4648 base64 encoded, RSA-wrapped 2048-bit
		// customer-supplied encryption key to either encrypt or decrypt
		// this resource. You can provide either the rawKey or the
		// rsaEncryptedKey.
		rsa_encrypted_key?: string

		// The RFC 4648 base64 encoded SHA-256 hash of the
		// customer-supplied
		// encryption key that protects this resource.
		sha256?: string
	})

	#guest_os_features: close({
		// The type of supported feature. Read [Enabling guest operating
		// system
		// features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features)
		// to see a list of available options. Possible values:
		// ["MULTI_IP_SUBNET", "SECURE_BOOT", "SEV_CAPABLE",
		// "UEFI_COMPATIBLE", "VIRTIO_SCSI_MULTIQUEUE", "WINDOWS",
		// "GVNIC", "SEV_LIVE_MIGRATABLE", "SEV_SNP_CAPABLE",
		// "SUSPEND_RESUME_COMPATIBLE", "TDX_CAPABLE"]
		type!: string
	})

	#source_snapshot_encryption_key: close({
		// Specifies a 256-bit customer-supplied encryption key, encoded
		// in
		// RFC 4648 base64 to either encrypt or decrypt this resource.
		raw_key?: string

		// The RFC 4648 base64 encoded SHA-256 hash of the
		// customer-supplied
		// encryption key that protects this resource.
		sha256?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
