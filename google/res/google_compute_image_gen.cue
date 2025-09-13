package res

import "list"

#google_compute_image: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_compute_image")
	close({
		// Size of the image tar.gz archive stored in Google Cloud Storage
		// (in
		// bytes).
		archive_size_bytes?: number

		// Creation timestamp in RFC3339 text format.
		creation_timestamp?: string

		// An optional description of this resource. Provide this property
		// when
		// you create the resource.
		description?: string

		// Size of the image when restored onto a persistent disk (in GB).
		disk_size_gb?: number

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The name of the image family to which this image belongs. You
		// can
		// create disks by specifying an image family instead of a
		// specific
		// image name. The image family always returns its latest image
		// that is
		// not deprecated. The name of the image family must comply with
		// RFC1035.
		family?: string

		// The fingerprint used for optimistic locking of this resource.
		// Used
		// internally during updates.
		label_fingerprint?: string

		// Labels to apply to this Image.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Any applicable license URI.
		licenses?: [...string]
		id?: string

		// Name of the resource; provided by the client when the resource
		// is
		// created. The name must be 1-63 characters long, and comply with
		// RFC1035. Specifically, the name must be 1-63 characters long
		// and
		// match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which
		// means
		// the first character must be a lowercase letter, and all
		// following
		// characters must be a dash, lowercase letter, or digit, except
		// the
		// last character, which cannot be a dash.
		name!: string

		// The source disk to create this image based on.
		// You must provide either this property or the
		// rawDisk.source property but not both to create an image.
		source_disk?: string
		guest_os_features?: matchN(1, [#guest_os_features, [...#guest_os_features]])
		image_encryption_key?: matchN(1, [#image_encryption_key, list.MaxItems(1) & [...#image_encryption_key]])
		raw_disk?: matchN(1, [#raw_disk, list.MaxItems(1) & [...#raw_disk]])
		shielded_instance_initial_state?: matchN(1, [#shielded_instance_initial_state, list.MaxItems(1) & [...#shielded_instance_initial_state]])
		source_disk_encryption_key?: matchN(1, [#source_disk_encryption_key, list.MaxItems(1) & [...#source_disk_encryption_key]])
		source_image_encryption_key?: matchN(1, [#source_image_encryption_key, list.MaxItems(1) & [...#source_image_encryption_key]])
		source_snapshot_encryption_key?: matchN(1, [#source_snapshot_encryption_key, list.MaxItems(1) & [...#source_snapshot_encryption_key]])
		timeouts?: #timeouts
		project?:  string

		// URL of the source image used to create this image. In order to
		// create an image, you must provide the full or partial
		// URL of one of the following:
		//
		// * The selfLink URL
		// * This property
		// * The rawDisk.source URL
		// * The sourceDisk URL
		source_image?: string
		self_link?:    string

		// URL of the source snapshot used to create this image.
		//
		// In order to create an image, you must provide the full or
		// partial URL of one of the following:
		//
		// * The selfLink URL
		// * This property
		// * The sourceImage URL
		// * The rawDisk.source URL
		// * The sourceDisk URL
		source_snapshot?: string

		// Cloud Storage bucket storage location of the image
		// (regional or multi-regional).
		// Reference link:
		// https://cloud.google.com/compute/docs/reference/rest/v1/images
		storage_locations?: [...string]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#guest_os_features: close({
		// The type of supported feature. Read [Enabling guest operating
		// system
		// features](https://cloud.google.com/compute/docs/images/create-delete-deprecate-private-images#guest-os-features)
		// to see a list of available options. Possible values:
		// ["MULTI_IP_SUBNET", "SECURE_BOOT", "SEV_CAPABLE",
		// "UEFI_COMPATIBLE", "VIRTIO_SCSI_MULTIQUEUE", "WINDOWS",
		// "GVNIC", "IDPF", "SEV_LIVE_MIGRATABLE", "SEV_SNP_CAPABLE",
		// "SUSPEND_RESUME_COMPATIBLE", "TDX_CAPABLE",
		// "SEV_LIVE_MIGRATABLE_V2"]
		type!: string
	})

	#image_encryption_key: close({
		// The self link of the encryption key that is stored in Google
		// Cloud
		// KMS.
		kms_key_self_link?: string

		// The service account being used for the encryption request for
		// the
		// given KMS key. If absent, the Compute Engine default service
		// account is used.
		kms_key_service_account?: string

		// Specifies a 256-bit customer-supplied encryption key, encoded
		// in
		// RFC 4648 base64 to either encrypt or decrypt this resource.
		raw_key?: string

		// Specifies a 256-bit customer-supplied encryption key, encoded
		// in
		// RFC 4648 base64 to either encrypt or decrypt this resource.
		rsa_encrypted_key?: string
	})

	#raw_disk: close({
		// The format used to encode and transmit the block device, which
		// should be TAR. This is just a container and transmission format
		// and not a runtime format. Provided by the client when the disk
		// image is created. Default value: "TAR" Possible values: ["TAR"]
		container_type?: string

		// An optional SHA1 checksum of the disk image before unpackaging.
		// This is provided by the client when the disk image is created.
		sha1?: string

		// The full Google Cloud Storage URL where disk storage is stored
		// You must provide either this property or the sourceDisk
		// property
		// but not both.
		source!: string
	})

	#shielded_instance_initial_state: close({
		dbs?: matchN(1, [_#defs."/$defs/shielded_instance_initial_state/$defs/dbs", [..._#defs."/$defs/shielded_instance_initial_state/$defs/dbs"]])
		dbxs?: matchN(1, [_#defs."/$defs/shielded_instance_initial_state/$defs/dbxs", [..._#defs."/$defs/shielded_instance_initial_state/$defs/dbxs"]])
		keks?: matchN(1, [_#defs."/$defs/shielded_instance_initial_state/$defs/keks", [..._#defs."/$defs/shielded_instance_initial_state/$defs/keks"]])
		pk?: matchN(1, [_#defs."/$defs/shielded_instance_initial_state/$defs/pk", list.MaxItems(1) & [..._#defs."/$defs/shielded_instance_initial_state/$defs/pk"]])
	})

	#source_disk_encryption_key: close({
		// The self link of the encryption key used to decrypt this
		// resource. Also called KmsKeyName
		// in the cloud console. Your project's Compute Engine System
		// service account
		// ('service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com')
		// must have
		// 'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this
		// feature.
		// See
		// https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
		kms_key_self_link?: string

		// The service account being used for the encryption request for
		// the
		// given KMS key. If absent, the Compute Engine default service
		// account is used.
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
	})

	#source_image_encryption_key: close({
		// The self link of the encryption key used to decrypt this
		// resource. Also called KmsKeyName
		// in the cloud console. Your project's Compute Engine System
		// service account
		// ('service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com')
		// must have
		// 'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this
		// feature.
		// See
		// https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
		kms_key_self_link?: string

		// The service account being used for the encryption request for
		// the
		// given KMS key. If absent, the Compute Engine default service
		// account is used.
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
	})

	#source_snapshot_encryption_key: close({
		// The self link of the encryption key used to decrypt this
		// resource. Also called KmsKeyName
		// in the cloud console. Your project's Compute Engine System
		// service account
		// ('service-{{PROJECT_NUMBER}}@compute-system.iam.gserviceaccount.com')
		// must have
		// 'roles/cloudkms.cryptoKeyEncrypterDecrypter' to use this
		// feature.
		// See
		// https://cloud.google.com/compute/docs/disks/customer-managed-encryption#encrypt_a_new_persistent_disk_with_your_own_keys
		kms_key_self_link?: string

		// The service account being used for the encryption request for
		// the
		// given KMS key. If absent, the Compute Engine default service
		// account is used.
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
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/shielded_instance_initial_state/$defs/dbs": close({
		// The raw content in the secure keys file.
		//
		// A base64-encoded string.
		content!: string

		// The file type of source file.
		file_type?: string
	})

	_#defs: "/$defs/shielded_instance_initial_state/$defs/dbxs": close({
		// The raw content in the secure keys file.
		//
		// A base64-encoded string.
		content!: string

		// The file type of source file.
		file_type?: string
	})

	_#defs: "/$defs/shielded_instance_initial_state/$defs/keks": close({
		// The raw content in the secure keys file.
		//
		// A base64-encoded string.
		content!: string

		// The file type of source file.
		file_type?: string
	})

	_#defs: "/$defs/shielded_instance_initial_state/$defs/pk": close({
		// The raw content in the secure keys file.
		//
		// A base64-encoded string.
		content!: string

		// The file type of source file.
		file_type?: string
	})
}
