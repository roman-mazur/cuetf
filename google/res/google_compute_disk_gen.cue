package res

import "list"

#google_compute_disk: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_disk")
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

		// The architecture of the disk. Values include 'X86_64', 'ARM64'.
		architecture?: string

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

		// Whether this disk is using confidential compute mode.
		// Note: Only supported on hyperdisk skus, disk_encryption_key is
		// required when setting to true
		enable_confidential_compute?: bool
		id?:                          string

		// The image from which to initialize this disk. This can be
		// one of: the image's 'self_link',
		// 'projects/{project}/global/images/{image}',
		// 'projects/{project}/global/images/family/{family}',
		// 'global/images/{image}',
		// 'global/images/family/{family}', 'family/{family}',
		// '{project}/{family}',
		// '{project}/{image}', '{family}', or '{image}'. If referred by
		// family, the
		// images names must include the family name. If they don't, use
		// the
		// [google_compute_image data
		// source](/docs/providers/google/d/compute_image.html).
		// For instance, the image 'centos-6-v20180104' includes its
		// family name 'centos-6'.
		// These images can be referred by family name here.
		image?: string

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
		project?:                   string

		// Indicates how many IOPS must be provisioned for the disk.
		// Note: Updating currently is only supported by hyperdisk skus
		// without the need to delete and recreate the disk, hyperdisk
		// allows for an update of IOPS every 4 hours. To update your
		// hyperdisk more frequently, you'll need to manually delete and
		// recreate it
		provisioned_iops?: number

		// Indicates how much Throughput must be provisioned for the disk.
		// Note: Updating currently is only supported by hyperdisk skus
		// without the need to delete and recreate the disk, hyperdisk
		// allows for an update of Throughput every 4 hours. To update
		// your hyperdisk more frequently, you'll need to manually delete
		// and recreate it
		provisioned_throughput?: number
		async_primary_disk?: matchN(1, [#async_primary_disk, list.MaxItems(1) & [...#async_primary_disk]])
		disk_encryption_key?: matchN(1, [#disk_encryption_key, list.MaxItems(1) & [...#disk_encryption_key]])
		guest_os_features?: matchN(1, [#guest_os_features, [...#guest_os_features]])
		params?: matchN(1, [#params, list.MaxItems(1) & [...#params]])
		source_image_encryption_key?: matchN(1, [#source_image_encryption_key, list.MaxItems(1) & [...#source_image_encryption_key]])
		source_snapshot_encryption_key?: matchN(1, [#source_snapshot_encryption_key, list.MaxItems(1) & [...#source_snapshot_encryption_key]])
		timeouts?:  #timeouts
		self_link?: string

		// Size of the persistent disk, specified in GB. You can specify
		// this
		// field when creating a persistent disk using the 'image' or
		// 'snapshot' parameter, or specify it alone to create an empty
		// persistent disk.
		//
		// If you specify this field along with 'image' or 'snapshot',
		// the value must not be less than the size of the image
		// or the size of the snapshot.
		//
		// ~>**NOTE** If you change the size, Terraform updates the disk
		// size
		// if upsizing is detected but recreates the disk if downsizing is
		// requested.
		// You can add 'lifecycle.prevent_destroy' in the config to
		// prevent destroying
		// and recreating.
		size?: number

		// The source snapshot used to create this disk. You can provide
		// this as
		// a partial or full URL to the resource. If the snapshot is in
		// another
		// project than this disk, you must supply a full URL. For
		// example, the
		// following are valid values:
		//
		// *
		// 'https://www.googleapis.com/compute/v1/projects/project/global/snapshots/snapshot'
		// * 'projects/project/global/snapshots/snapshot'
		// * 'global/snapshots/snapshot'
		// * 'snapshot'
		snapshot?: string

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

		// The ID value of the disk used to create this image. This value
		// may
		// be used to determine whether the image was taken from the
		// current
		// or a previous instance of a given disk name.
		source_disk_id?: string

		// The ID value of the image used to create this disk. This value
		// identifies the exact image that was used to create this
		// persistent
		// disk. For example, if you created the persistent disk from an
		// image
		// that was later deleted and recreated under the same name, the
		// source
		// image ID would identify the exact version of the image that was
		// used.
		source_image_id?: string

		// The source instant snapshot used to create this disk. You can
		// provide this as a partial or full URL to the resource.
		// For example, the following are valid values:
		//
		// *
		// 'https://www.googleapis.com/compute/v1/projects/project/zones/zone/instantSnapshots/instantSnapshot'
		// *
		// 'projects/project/zones/zone/instantSnapshots/instantSnapshot'
		// * 'zones/zone/instantSnapshots/instantSnapshot'
		source_instant_snapshot?: string

		// The unique ID of the instant snapshot used to create this disk.
		// This value identifies
		// the exact instant snapshot that was used to create this
		// persistent disk.
		// For example, if you created the persistent disk from an instant
		// snapshot that was later
		// deleted and recreated under the same name, the source instant
		// snapshot ID would identify
		// the exact version of the instant snapshot that was used.
		source_instant_snapshot_id?: string

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

		// The full Google Cloud Storage URI where the disk image is
		// stored.
		// This file must be a gzip-compressed tarball whose name ends in
		// .tar.gz or virtual machine disk whose name ends in vmdk.
		// Valid URIs may start with gs:// or
		// https://storage.googleapis.com/.
		// This flag is not optimized for creating multiple disks from a
		// source storage object.
		// To create many disks from a source storage object, use gcloud
		// compute images import instead.
		source_storage_object?: string

		// The URL or the name of the storage pool in which the new disk
		// is created.
		// For example:
		// *
		// https://www.googleapis.com/compute/v1/projects/{project}/zones/{zone}/storagePools/{storagePool}
		// * /projects/{project}/zones/{zone}/storagePools/{storagePool}
		// * /zones/{zone}/storagePools/{storagePool}
		// * /{storagePool}
		storage_pool?: string

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

		// A reference to the zone where the disk resides.
		zone?: string
	})

	#async_primary_disk: close({
		// Primary disk for asynchronous disk replication.
		disk!: string
	})

	#disk_encryption_key: close({
		// The self link of the encryption key used to encrypt the disk.
		// Also called KmsKeyName
		// in the cloud console. Your project's Compute Engine System
		// service account
		// ('service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com')
		// must have
		// 'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this
		// feature.
		// See
		// https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
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
		// to see a list of available options.
		type!: string
	})

	#params: close({
		// Resource manager tags to be bound to the disk. Tag keys and
		// values have the
		// same definition as resource manager tags. Keys must be in the
		// format tagKeys/{tag_key_id},
		// and values are in the format tagValues/456.
		resource_manager_tags?: [string]: string
	})

	#source_image_encryption_key: close({
		// The self link of the encryption key used to encrypt the disk.
		// Also called KmsKeyName
		// in the cloud console. Your project's Compute Engine System
		// service account
		// ('service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com')
		// must have
		// 'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this
		// feature.
		// See
		// https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
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

		// The RFC 4648 base64 encoded SHA-256 hash of the
		// customer-supplied
		// encryption key that protects this resource.
		sha256?: string
	})

	#source_snapshot_encryption_key: close({
		// The self link of the encryption key used to encrypt the disk.
		// Also called KmsKeyName
		// in the cloud console. Your project's Compute Engine System
		// service account
		// ('service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com')
		// must have
		// 'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this
		// feature.
		// See
		// https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
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
