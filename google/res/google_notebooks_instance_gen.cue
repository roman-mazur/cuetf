package res

import "list"

#google_notebooks_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_notebooks_instance")
	close({
		// The size of the boot disk in GB attached to this instance,
		// up to a maximum of 64000 GB (64 TB). The minimum recommended
		// value is 100 GB.
		// If not specified, this defaults to 100.
		boot_disk_size_gb?: number

		// Possible disk types for notebook instances. Possible values:
		// ["DISK_TYPE_UNSPECIFIED", "PD_STANDARD", "PD_SSD",
		// "PD_BALANCED", "PD_EXTREME"]
		boot_disk_type?: string

		// Instance creation time
		create_time?: string

		// Specify a custom Cloud Storage path where the GPU driver is
		// stored.
		// If not specified, we'll automatically choose from official GPU
		// drivers.
		custom_gpu_driver_path?: string

		// The size of the data disk in GB attached to this instance,
		// up to a maximum of 64000 GB (64 TB).
		// You can choose the size of the data disk based on how big your
		// notebooks and data are.
		// If not specified, this defaults to 100.
		data_disk_size_gb?: number

		// Possible disk types for notebook instances. Possible values:
		// ["DISK_TYPE_UNSPECIFIED", "PD_STANDARD", "PD_SSD",
		// "PD_BALANCED", "PD_EXTREME"]
		data_disk_type?: string

		// Desired state of the Notebook Instance. Set this field to
		// 'ACTIVE' to start the Instance, and 'STOPPED' to stop the
		// Instance.
		desired_state?: string

		// Disk encryption method used on the boot and data disks,
		// defaults to GMEK. Possible values:
		// ["DISK_ENCRYPTION_UNSPECIFIED", "GMEK", "CMEK"]
		disk_encryption?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Whether the end user authorizes Google Cloud to install GPU
		// driver
		// on this instance. If this field is empty or set to false, the
		// GPU driver
		// won't be installed. Only applicable to instances with GPUs.
		install_gpu_driver?: bool

		// The list of owners of this instance after creation.
		// Format: alias@example.com.
		// Currently supports one owner only.
		// If not specified, all of the service account users of
		// your VM instance's service account can use the instance.
		instance_owners?: [...string]

		// The KMS key used to encrypt the disks, only applicable if
		// diskEncryption is CMEK.
		// Format:
		// projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}
		kms_key?: string

		// Labels to apply to this instance. These can be later modified
		// by the setLabels method.
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// A reference to the zone where the machine resides.
		location!: string

		// A reference to a machine type which defines VM kind.
		machine_type!: string

		// Custom metadata to apply to this instance.
		// An object containing a list of "key": value pairs. Example: {
		// "name": "wrench", "mass": "1.3kg", "count": "3" }.
		metadata?: [string]: string

		// The name specified for the Notebook instance.
		name!: string

		// The name of the VPC that this instance is in.
		// Format: projects/{project_id}/global/networks/{network_id}
		network?: string
		accelerator_config?: matchN(1, [#accelerator_config, list.MaxItems(1) & [...#accelerator_config]])
		container_image?: matchN(1, [#container_image, list.MaxItems(1) & [...#container_image]])
		reservation_affinity?: matchN(1, [#reservation_affinity, list.MaxItems(1) & [...#reservation_affinity]])
		shielded_instance_config?: matchN(1, [#shielded_instance_config, list.MaxItems(1) & [...#shielded_instance_config]])
		timeouts?: #timeouts
		vm_image?: matchN(1, [#vm_image, list.MaxItems(1) & [...#vm_image]])

		// The type of vNIC driver. Possible values:
		// ["UNSPECIFIED_NIC_TYPE", "VIRTIO_NET", "GVNIC"]
		nic_type?: string

		// The notebook instance will not register with the proxy..
		no_proxy_access?: bool

		// No public IP will be assigned to this instance.
		no_public_ip?: bool

		// If true, the data disk will not be auto deleted when deleting
		// the instance.
		no_remove_data_disk?: bool

		// Path to a Bash script that automatically runs after a
		// notebook instance fully boots up. The path must be a URL
		// or Cloud Storage path (gs://path-to-file/file-name).
		post_startup_script?: string

		// The proxy endpoint that is used to access the Jupyter notebook.
		// Only returned when the resource is in a 'PROVISIONED' state. If
		// needed you can utilize 'terraform apply -refresh-only' to await
		// the population of this value.
		proxy_uri?: string
		project?:   string

		// The service account on this instance, giving access to other
		// Google Cloud services. You can use any service account within
		// the same project, but you must have the service account user
		// permission to use the instance. If not specified,
		// the Compute Engine default service account is used.
		service_account?: string

		// Optional. The URIs of service account scopes to be included in
		// Compute Engine instances.
		// If not specified, the following scopes are defined:
		// - https://www.googleapis.com/auth/cloud-platform
		// - https://www.googleapis.com/auth/userinfo.email
		service_account_scopes?: [...string]

		// The state of this instance.
		state?: string

		// The name of the subnet that this instance is in.
		// Format:
		// projects/{project_id}/regions/{region}/subnetworks/{subnetwork_id}
		subnet?: string

		// The Compute Engine tags to add to instance.
		tags?: [...string]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Instance update time.
		update_time?: string
	})

	#accelerator_config: close({
		// Count of cores of this accelerator.
		core_count!: number

		// Type of this accelerator. Possible values:
		// ["ACCELERATOR_TYPE_UNSPECIFIED", "NVIDIA_TESLA_K80",
		// "NVIDIA_TESLA_P100", "NVIDIA_TESLA_V100", "NVIDIA_TESLA_P4",
		// "NVIDIA_TESLA_T4", "NVIDIA_TESLA_T4_VWS",
		// "NVIDIA_TESLA_P100_VWS", "NVIDIA_TESLA_P4_VWS",
		// "NVIDIA_TESLA_A100", "TPU_V2", "TPU_V3"]
		type!: string
	})

	#container_image: close({
		// The path to the container image repository.
		// For example: gcr.io/{project_id}/{imageName}
		repository!: string

		// The tag of the container image. If not specified, this defaults
		// to the latest tag.
		tag?: string
	})

	#reservation_affinity: close({
		// The type of Compute Reservation. Possible values:
		// ["NO_RESERVATION", "ANY_RESERVATION", "SPECIFIC_RESERVATION"]
		consume_reservation_type!: string

		// Corresponds to the label key of reservation resource.
		key?: string

		// Corresponds to the label values of reservation resource.
		values?: [...string]
	})

	#shielded_instance_config: close({
		// Defines whether the instance has integrity monitoring enabled.
		// Enables monitoring and attestation of the
		// boot integrity of the instance. The attestation is performed
		// against the integrity policy baseline.
		// This baseline is initially derived from the implicitly trusted
		// boot image when the instance is created.
		// Enabled by default.
		enable_integrity_monitoring?: bool

		// Defines whether the instance has Secure Boot enabled. Secure
		// Boot helps ensure that the system only runs
		// authentic software by verifying the digital signature of all
		// boot components, and halting the boot process
		// if signature verification fails.
		// Disabled by default.
		enable_secure_boot?: bool

		// Defines whether the instance has the vTPM enabled.
		// Enabled by default.
		enable_vtpm?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vm_image: close({
		// Use this VM image family to find the image; the newest image in
		// this family will be used.
		image_family?: string

		// Use VM image name to find the image.
		image_name?: string

		// The name of the Google Cloud project that this VM image belongs
		// to.
		// Format: projects/{project_id}
		project!: string
	})
}
