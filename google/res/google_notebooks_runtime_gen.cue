package res

import "list"

#google_notebooks_runtime: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_notebooks_runtime")
	close({
		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The health state of this runtime. For a list of possible output
		// values, see 'https://cloud.google.com/vertex-ai/docs/workbench/
		// reference/rest/v1/projects.locations.runtimes#healthstate'.
		health_state?: string

		// The labels to associate with this runtime. Label **keys** must
		// contain 1 to 63 characters, and must conform to [RFC 1035]
		// (https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
		// empty, but, if present, must contain 1 to 63 characters, and
		// must
		// conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
		// more than 32 labels can be associated with a cluster.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// A reference to the zone where the machine resides.
		location!: string

		// Contains Runtime daemon metrics such as Service status and
		// JupyterLab
		// status
		metrics?: [...close({
			system_metrics?: [string]: string
		})]
		access_config?: matchN(1, [#access_config, list.MaxItems(1) & [...#access_config]])

		// The name specified for the Notebook runtime.
		name!: string
		software_config?: matchN(1, [#software_config, list.MaxItems(1) & [...#software_config]])
		timeouts?: #timeouts
		virtual_machine?: matchN(1, [#virtual_machine, list.MaxItems(1) & [...#virtual_machine]])
		project?: string

		// The state of this runtime.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
	})

	#access_config: close({
		// The type of access mode this instance. For valid values, see
		// 'https://cloud.google.com/vertex-ai/docs/workbench/reference/
		// rest/v1/projects.locations.runtimes#RuntimeAccessType'.
		access_type?: string

		// The proxy endpoint that is used to access the runtime.
		proxy_uri?: string

		// The owner of this runtime after creation. Format:
		// 'alias@example.com'.
		// Currently supports one owner only.
		runtime_owner?: string
	})

	#software_config: close({
		// Specify a custom Cloud Storage path where the GPU driver is
		// stored.
		// If not specified, we'll automatically choose from official GPU
		// drivers.
		custom_gpu_driver_path?: string

		// Verifies core internal services are running. Default: True.
		enable_health_monitoring?: bool

		// Runtime will automatically shutdown after idle_shutdown_time.
		// Default: True
		idle_shutdown?: bool

		// Time in minutes to wait before shuting down runtime.
		// Default: 180 minutes
		idle_shutdown_timeout?: number

		// Install Nvidia Driver automatically.
		install_gpu_driver?: bool

		// Cron expression in UTC timezone for schedule instance auto
		// upgrade.
		// Please follow the [cron
		// format](https://en.wikipedia.org/wiki/Cron).
		notebook_upgrade_schedule?: string

		// Path to a Bash script that automatically runs after a notebook
		// instance
		// fully boots up. The path must be a URL or
		// Cloud Storage path (gs://path-to-file/file-name).
		post_startup_script?: string
		kernels?: matchN(1, [_#defs."/$defs/software_config/$defs/kernels", [..._#defs."/$defs/software_config/$defs/kernels"]])

		// Behavior for the post startup script. Possible values:
		// ["POST_STARTUP_SCRIPT_BEHAVIOR_UNSPECIFIED",
		// "RUN_EVERY_START", "DOWNLOAD_AND_RUN_EVERY_START"]
		post_startup_script_behavior?: string

		// Bool indicating whether an newer image is available in an image
		// family.
		upgradeable?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#virtual_machine: close({
		virtual_machine_config?: matchN(1, [_#defs."/$defs/virtual_machine/$defs/virtual_machine_config", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine/$defs/virtual_machine_config"]])

		// The unique identifier of the Managed Compute Engine instance.
		instance_id?: string

		// The user-friendly name of the Managed Compute Engine instance.
		instance_name?: string
	})

	_#defs: "/$defs/software_config/$defs/kernels": close({
		// The path to the container image repository.
		// For example: gcr.io/{project_id}/{imageName}
		repository!: string

		// The tag of the container image. If not specified, this defaults
		// to the latest tag.
		tag?: string
	})

	_#defs: "/$defs/virtual_machine/$defs/virtual_machine_config": close({
		// The Compute Engine guest attributes. (see [Project and instance
		// guest attributes](https://cloud.google.com/compute/docs/
		// storing-retrieving-metadata#guest_attributes)).
		guest_attributes?: [string]: string

		// If true, runtime will only have internal IP addresses. By
		// default,
		// runtimes are not restricted to internal IP addresses, and will
		// have ephemeral external IP addresses assigned to each vm. This
		// 'internal_ip_only' restriction can only be enabled for
		// subnetwork
		// enabled networks, and all dependencies must be configured to be
		// accessible without external IP addresses.
		internal_ip_only?: bool

		// The labels to associate with this runtime. Label **keys** must
		// contain 1 to 63 characters, and must conform to [RFC 1035]
		// (https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be
		// empty, but, if present, must contain 1 to 63 characters, and
		// must
		// conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No
		// more than 32 labels can be associated with a cluster.
		labels?: [string]: string

		// The Compute Engine machine type used for runtimes.
		machine_type!: string

		// The Compute Engine metadata entries to add to virtual machine.
		// (see [Project and instance metadata](https://cloud.google.com
		// /compute/docs/storing-retrieving-metadata#project_and_instance
		// _metadata)).
		metadata?: [string]: string

		// The Compute Engine network to be used for machine
		// communications.
		// Cannot be specified with subnetwork. If neither 'network' nor
		// 'subnet' is specified, the "default" network of the project is
		// used, if it exists. A full URL or partial URI. Examples:
		// * 'https://www.googleapis.com/compute/v1/projects/[project_id]/
		// regions/global/default'
		// * 'projects/[project_id]/regions/global/default'
		// Runtimes are managed resources inside Google Infrastructure.
		// Runtimes support the following network configurations:
		// * Google Managed Network (Network & subnet are empty)
		// * Consumer Project VPC (network & subnet are required).
		// Requires
		// configuring Private Service Access.
		// * Shared VPC (network & subnet are required). Requires
		// configuring Private Service Access.
		network?: string

		// The type of vNIC to be used on this interface. This may be
		// gVNIC
		// or VirtioNet. Possible values: ["UNSPECIFIED_NIC_TYPE",
		// "VIRTIO_NET", "GVNIC"]
		nic_type?: string

		// Reserved IP Range name is used for VPC Peering. The
		// subnetwork allocation will use the range *name* if it's
		// assigned.
		reserved_ip_range?: string
		accelerator_config?: matchN(1, [_#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/accelerator_config", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/accelerator_config"]])
		container_images?: matchN(1, [_#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/container_images", [..._#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/container_images"]])
		data_disk!: matchN(1, [_#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/data_disk", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/data_disk"]])
		encryption_config?: matchN(1, [_#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/encryption_config", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/encryption_config"]])
		shielded_instance_config?: matchN(1, [_#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/shielded_instance_config", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/shielded_instance_config"]])

		// The Compute Engine subnetwork to be used for machine
		// communications. Cannot be specified with network. A full URL or
		// partial URI are valid. Examples:
		// * 'https://www.googleapis.com/compute/v1/projects/[project_id]/
		// regions/us-east1/subnetworks/sub0'
		// * 'projects/[project_id]/regions/us-east1/subnetworks/sub0'
		subnet?: string

		// The Compute Engine tags to add to runtime (see [Tagging
		// instances]
		// (https://cloud.google.com/compute/docs/
		// label-or-tag-resources#tags)).
		tags?: [...string]

		// The zone where the virtual machine is located.
		zone?: string
	})

	_#defs: "/$defs/virtual_machine/$defs/virtual_machine_config/$defs/accelerator_config": close({
		// Count of cores of this accelerator.
		core_count?: number

		// Accelerator model. For valid values, see
		// 'https://cloud.google.com/vertex-ai/docs/workbench/reference/
		// rest/v1/projects.locations.runtimes#AcceleratorType'
		type?: string
	})

	_#defs: "/$defs/virtual_machine/$defs/virtual_machine_config/$defs/container_images": close({
		// The path to the container image repository.
		// For example: gcr.io/{project_id}/{imageName}
		repository!: string

		// The tag of the container image. If not specified, this defaults
		// to the latest tag.
		tag?: string
	})

	_#defs: "/$defs/virtual_machine/$defs/virtual_machine_config/$defs/data_disk": close({
		// Optional. Specifies whether the disk will be auto-deleted
		// when the instance is deleted (but not when the disk is
		// detached from the instance).
		auto_delete?: bool

		// Optional. Indicates that this is a boot disk. The virtual
		// machine will use the first partition of the disk for its
		// root filesystem.
		boot?: bool

		// Optional. Specifies a unique device name of your choice
		// that is reflected into the /dev/disk/by-id/google-* tree
		// of a Linux operating system running within the instance.
		// This name can be used to reference the device for mounting,
		// resizing, and so on, from within the instance.
		// If not specified, the server chooses a default device name
		// to apply to this disk, in the form persistent-disk-x, where
		// x is a number assigned by Google Compute Engine. This field
		// is only applicable for persistent disks.
		device_name?: string

		// Indicates a list of features to enable on the guest operating
		// system. Applicable only for bootable images. To see a list of
		// available features, read
		// 'https://cloud.google.com/compute/docs/
		// images/create-delete-deprecate-private-images#guest-os-features'
		// options. ''
		guest_os_features?: [...string]

		// Output only. A zero-based index to this disk, where 0 is
		// reserved for the boot disk. If you have many disks attached
		// to an instance, each disk would have a unique index number.
		index?: number

		// "Specifies the disk interface to use for attaching this disk,
		// which is either SCSI or NVME. The default is SCSI. Persistent
		// disks must always use SCSI and the request will fail if you
		// attempt
		// to attach a persistent disk in any other format than SCSI.
		// Local SSDs
		// can use either NVME or SCSI. For performance characteristics of
		// SCSI
		// over NVMe, see Local SSD performance. Valid values: * NVME *
		// SCSI".
		interface?: string

		// Type of the resource. Always compute#attachedDisk for attached
		// disks.
		kind?: string

		// Output only. Any valid publicly visible licenses.
		licenses?: [...string]
		initialize_params?: matchN(1, [_#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/data_disk/$defs/initialize_params", list.MaxItems(1) & [..._#defs."/$defs/virtual_machine/$defs/virtual_machine_config/$defs/data_disk/$defs/initialize_params"]])

		// The mode in which to attach this disk, either READ_WRITE
		// or READ_ONLY. If not specified, the default is to attach
		// the disk in READ_WRITE mode.
		mode?: string

		// Specifies a valid partial or full URL to an existing
		// Persistent Disk resource.
		source?: string

		// Specifies the type of the disk, either SCRATCH or PERSISTENT.
		// If not specified, the default is PERSISTENT.
		type?: string
	})

	_#defs: "/$defs/virtual_machine/$defs/virtual_machine_config/$defs/data_disk/$defs/initialize_params": close({
		// Provide this property when creating the disk.
		description?: string

		// Specifies the disk name. If not specified, the default is
		// to use the name of the instance. If the disk with the
		// instance name exists already in the given zone/region, a
		// new name will be automatically generated.
		disk_name?: string

		// Specifies the size of the disk in base-2 GB. If not
		// specified, the disk will be the same size as the image
		// (usually 10GB). If specified, the size must be equal to
		// or larger than 10GB. Default 100 GB.
		disk_size_gb?: number

		// The type of the boot disk attached to this runtime,
		// defaults to standard persistent disk. For valid values,
		// see 'https://cloud.google.com/vertex-ai/docs/workbench/
		// reference/rest/v1/projects.locations.runtimes#disktype'
		disk_type?: string

		// Labels to apply to this disk. These can be later modified
		// by the disks.setLabels method. This field is only
		// applicable for persistent disks.
		labels?: [string]: string
	})

	_#defs: "/$defs/virtual_machine/$defs/virtual_machine_config/$defs/encryption_config": close({
		// The Cloud KMS resource identifier of the customer-managed
		// encryption key used to protect a resource, such as a disks.
		// It has the following format:
		// 'projects/{PROJECT_ID}/locations/{REGION}/keyRings/
		// {KEY_RING_NAME}/cryptoKeys/{KEY_NAME}'
		kms_key?: string
	})

	_#defs: "/$defs/virtual_machine/$defs/virtual_machine_config/$defs/shielded_instance_config": close({
		// Defines whether the instance has integrity monitoring enabled.
		// Enables monitoring and attestation of the boot integrity of
		// the instance. The attestation is performed against the
		// integrity policy baseline. This baseline is initially derived
		// from the implicitly trusted boot image when the instance is
		// created. Enabled by default.
		enable_integrity_monitoring?: bool

		// Defines whether the instance has Secure Boot enabled.Secure
		// Boot helps ensure that the system only runs authentic software
		// by verifying the digital signature of all boot components, and
		// halting the boot process if signature verification fails.
		// Disabled by default.
		enable_secure_boot?: bool

		// Defines whether the instance has the vTPM enabled. Enabled by
		// default.
		enable_vtpm?: bool
	})
}
