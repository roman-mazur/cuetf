package res

import "list"

#google_workbench_instance: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_workbench_instance")
	close({
		// An RFC3339 timestamp in UTC time. This in the format of
		// yyyy-MM-ddTHH:mm:ss.SSSZ.
		// The milliseconds portion (".SSS") is optional.
		create_time?: string

		// Output only. Email address of entity that sent original
		// CreateInstance request.
		creator?: string

		// Desired state of the Workbench Instance. Set this field to
		// 'ACTIVE' to start the Instance, and 'STOPPED' to stop the
		// Instance.
		desired_state?: string

		// Optional. If true, the workbench instance will not register
		// with the proxy.
		disable_proxy_access?: bool

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Flag to enable managed end user credentials for the instance.
		enable_managed_euc?: bool

		// Flag that specifies that a notebook can be accessed with third
		// party
		// identity provider.
		enable_third_party_identity?: bool

		// 'Output only. Additional information about instance health.
		// Example:
		// healthInfo": { "docker_proxy_agent_status": "1",
		// "docker_status": "1", "jupyterlab_api_status":
		// "-1", "jupyterlab_status": "-1", "updated": "2020-10-18
		// 09:40:03.573409" }'
		health_info?: [...close({})]

		// Output only. Instance health_state.
		health_state?: string
		id?:           string

		// Required. User-defined unique ID of this instance.
		instance_id?: string

		// 'Optional. Input only. The owner of this instance after
		// creation. Format:
		// 'alias@example.com' Currently supports one owner only. If not
		// specified, all of
		// the service account users of your VM instance''s service
		// account can use the instance.
		// If specified, sets the access mode to 'Single user'. For more
		// details, see
		// https://cloud.google.com/vertex-ai/docs/workbench/instances/manage-access-jupyterlab'
		instance_owners?: [...string]

		// Optional. Labels to apply to this instance. These can be later
		// modified
		// by the UpdateInstance method.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		gce_setup?: matchN(1, [#gce_setup, list.MaxItems(1) & [...#gce_setup]])
		timeouts?: #timeouts

		// Part of 'parent'. See documentation of 'projectsId'.
		location!: string

		// The name of this workbench instance. Format:
		// 'projects/{project_id}/locations/{location}/instances/{instance_id}'
		name!:    string
		project?: string

		// Output only. The proxy endpoint that is used to access the
		// Jupyter notebook.
		proxy_uri?: string

		// Output only. The state of this instance.
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// An RFC3339 timestamp in UTC time. This in the format of
		// yyyy-MM-ddTHH:mm:ss.SSSZ.
		// The milliseconds portion (".SSS") is optional.
		update_time?: string

		// Output only. The upgrade history of this instance.
		upgrade_history?: [...close({
			action?:          string
			container_image?: string
			create_time?:     string
			framework?:       string
			snapshot?:        string
			state?:           string
			target_version?:  string
			version?:         string
			vm_image?:        string
		})]
	})

	#gce_setup: close({
		// Optional. If true, no external IP will be assigned to this VM
		// instance.
		disable_public_ip?: bool

		// Optional. Flag to enable ip forwarding or not, default
		// false/off.
		// https://cloud.google.com/vpc/docs/using-routes#canipforward
		enable_ip_forwarding?: bool

		// Optional. The machine type of the VM instance.
		// https://cloud.google.com/compute/docs/machine-resource
		machine_type?: string
		accelerator_configs?: matchN(1, [_#defs."/$defs/gce_setup/$defs/accelerator_configs", [..._#defs."/$defs/gce_setup/$defs/accelerator_configs"]])

		// Optional. Custom metadata to apply to this instance.
		metadata?: [string]: string
		boot_disk?: matchN(1, [_#defs."/$defs/gce_setup/$defs/boot_disk", list.MaxItems(1) & [..._#defs."/$defs/gce_setup/$defs/boot_disk"]])
		confidential_instance_config?: matchN(1, [_#defs."/$defs/gce_setup/$defs/confidential_instance_config", list.MaxItems(1) & [..._#defs."/$defs/gce_setup/$defs/confidential_instance_config"]])
		container_image?: matchN(1, [_#defs."/$defs/gce_setup/$defs/container_image", list.MaxItems(1) & [..._#defs."/$defs/gce_setup/$defs/container_image"]])
		data_disks?: matchN(1, [_#defs."/$defs/gce_setup/$defs/data_disks", list.MaxItems(1) & [..._#defs."/$defs/gce_setup/$defs/data_disks"]])
		network_interfaces?: matchN(1, [_#defs."/$defs/gce_setup/$defs/network_interfaces", [..._#defs."/$defs/gce_setup/$defs/network_interfaces"]])

		// Optional. The Compute Engine tags to add to instance (see
		// [Tagging
		// instances](https://cloud.google.com/compute/docs/label-or-tag-resources#tags)).
		tags?: [...string]
		reservation_affinity?: matchN(1, [_#defs."/$defs/gce_setup/$defs/reservation_affinity", list.MaxItems(1) & [..._#defs."/$defs/gce_setup/$defs/reservation_affinity"]])
		service_accounts?: matchN(1, [_#defs."/$defs/gce_setup/$defs/service_accounts", [..._#defs."/$defs/gce_setup/$defs/service_accounts"]])
		shielded_instance_config?: matchN(1, [_#defs."/$defs/gce_setup/$defs/shielded_instance_config", list.MaxItems(1) & [..._#defs."/$defs/gce_setup/$defs/shielded_instance_config"]])
		vm_image?: matchN(1, [_#defs."/$defs/gce_setup/$defs/vm_image", list.MaxItems(1) & [..._#defs."/$defs/gce_setup/$defs/vm_image"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/gce_setup/$defs/accelerator_configs": close({
		// Optional. Count of cores of this accelerator.
		core_count?: string

		// Optional. Type of this accelerator. Possible values:
		// ["NVIDIA_TESLA_P100", "NVIDIA_TESLA_V100", "NVIDIA_TESLA_P4",
		// "NVIDIA_TESLA_T4", "NVIDIA_TESLA_A100", "NVIDIA_A100_80GB",
		// "NVIDIA_L4", "NVIDIA_TESLA_T4_VWS", "NVIDIA_TESLA_P100_VWS",
		// "NVIDIA_TESLA_P4_VWS"]
		type?: string
	})

	_#defs: "/$defs/gce_setup/$defs/boot_disk": close({
		// Optional. Input only. Disk encryption method used on the boot
		// and
		// data disks, defaults to GMEK. Possible values: ["GMEK", "CMEK"]
		disk_encryption?: string

		// Optional. The size of the boot disk in GB attached to this
		// instance,
		// up to a maximum of 64000 GB (64 TB). If not specified, this
		// defaults to the
		// recommended value of 150GB.
		disk_size_gb?: string

		// Optional. Indicates the type of the disk. Possible values:
		// ["PD_STANDARD", "PD_SSD", "PD_BALANCED", "PD_EXTREME"]
		disk_type?: string

		// 'Optional. The KMS key used to encrypt the disks, only
		// applicable if disk_encryption is CMEK. Format:
		// 'projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}'
		// Learn more about using your own encryption keys.'
		kms_key?: string
	})

	_#defs: "/$defs/gce_setup/$defs/confidential_instance_config": close({
		// Defines the type of technology used by the confidential
		// instance. Possible values: ["SEV"]
		confidential_instance_type?: string
	})

	_#defs: "/$defs/gce_setup/$defs/container_image": close({
		// The path to the container image repository.
		// For example: gcr.io/{project_id}/{imageName}
		repository!: string

		// The tag of the container image. If not specified, this defaults
		// to the latest tag.
		tag?: string
	})

	_#defs: "/$defs/gce_setup/$defs/data_disks": close({
		// Optional. Input only. Disk encryption method used on the boot
		// and data disks, defaults to GMEK. Possible values: ["GMEK",
		// "CMEK"]
		disk_encryption?: string

		// Optional. The size of the disk in GB attached to this VM
		// instance,
		// up to a maximum of 64000 GB (64 TB). If not specified, this
		// defaults to
		// 100.
		disk_size_gb?: string

		// Optional. Input only. Indicates the type of the disk. Possible
		// values: ["PD_STANDARD", "PD_SSD", "PD_BALANCED", "PD_EXTREME"]
		disk_type?: string

		// 'Optional. The KMS key used to encrypt the disks,
		// only applicable if disk_encryption is CMEK. Format:
		// 'projects/{project_id}/locations/{location}/keyRings/{key_ring_id}/cryptoKeys/{key_id}'
		// Learn more about using your own encryption keys.'
		kms_key?: string
	})

	_#defs: "/$defs/gce_setup/$defs/network_interfaces": close({
		// Optional. The name of the VPC that this VM instance is in.
		network?: string
		access_configs?: matchN(1, [_#defs."/$defs/gce_setup/$defs/network_interfaces/$defs/access_configs", [..._#defs."/$defs/gce_setup/$defs/network_interfaces/$defs/access_configs"]])

		// Optional. The type of vNIC to be used on this interface. This
		// may be gVNIC or VirtioNet. Possible values: ["VIRTIO_NET",
		// "GVNIC"]
		nic_type?: string

		// Optional. The name of the subnet that this VM instance is in.
		subnet?: string
	})

	_#defs: "/$defs/gce_setup/$defs/network_interfaces/$defs/access_configs": close({
		// An external IP address associated with this instance. Specify
		// an unused
		// static external IP address available to the project or leave
		// this field
		// undefined to use an IP from a shared ephemeral IP address pool.
		// If you
		// specify a static external IP address, it must live in the same
		// region as
		// the zone of the instance.
		external_ip!: string
	})

	_#defs: "/$defs/gce_setup/$defs/reservation_affinity": close({
		// Specifies the type of reservation from which this instance can
		// consume resources:
		// RESERVATION_ANY (default), RESERVATION_SPECIFIC, or
		// RESERVATION_NONE. Possible values: ["RESERVATION_NONE",
		// "RESERVATION_ANY", "RESERVATION_SPECIFIC"]
		consume_reservation_type?: string

		// Corresponds to the label key of a reservation resource. To
		// target a
		// RESERVATION_SPECIFIC by name, use
		// compute.googleapis.com/reservation-name
		// as the key and specify the name of your reservation as its
		// value.
		key?: string

		// Corresponds to the label values of a reservation resource. This
		// can be
		// either a name to a reservation in the same project or
		// "projects/different-project/reservations/some-reservation-name"
		// to target a shared reservation in the same zone but in a
		// different project.
		values?: [...string]
	})

	_#defs: "/$defs/gce_setup/$defs/service_accounts": close({
		// Optional. Email address of the service account.
		email?: string

		// Output only. The list of scopes to be made available for this
		// service account. Set by the CLH to
		// https://www.googleapis.com/auth/cloud-platform
		scopes?: [...string]
	})

	_#defs: "/$defs/gce_setup/$defs/shielded_instance_config": close({
		// Optional. Defines whether the VM instance has integrity
		// monitoring
		// enabled. Enables monitoring and attestation of the boot
		// integrity of the VM
		// instance. The attestation is performed against the integrity
		// policy baseline.
		// This baseline is initially derived from the implicitly trusted
		// boot image
		// when the VM instance is created. Enabled by default.
		enable_integrity_monitoring?: bool

		// Optional. Defines whether the VM instance has Secure Boot
		// enabled.
		// Secure Boot helps ensure that the system only runs authentic
		// software by verifying
		// the digital signature of all boot components, and halting the
		// boot process
		// if signature verification fails. Disabled by default.
		enable_secure_boot?: bool

		// Optional. Defines whether the VM instance has the vTPM enabled.
		// Enabled by default.
		enable_vtpm?: bool
	})

	_#defs: "/$defs/gce_setup/$defs/vm_image": close({
		// Optional. Use this VM image family to find the image; the
		// newest
		// image in this family will be used.
		family?: string

		// Optional. Use VM image name to find the image.
		name?: string

		// The name of the Google Cloud project that this VM image belongs
		// to.
		// Format: {project_id}
		project?: string
	})
}
