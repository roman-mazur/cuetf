package res

import "list"

#google_workstations_workstation_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_workstations_workstation_config")
	close({
		allowed_ports?: matchN(1, [#allowed_ports, [...#allowed_ports]])
		container?: matchN(1, [#container, list.MaxItems(1) & [...#container]])
		encryption_key?: matchN(1, [#encryption_key, list.MaxItems(1) & [...#encryption_key]])
		ephemeral_directories?: matchN(1, [#ephemeral_directories, [...#ephemeral_directories]])
		host?: matchN(1, [#host, list.MaxItems(1) & [...#host]])
		persistent_directories?: matchN(1, [#persistent_directories, [...#persistent_directories]])
		readiness_checks?: matchN(1, [#readiness_checks, [...#readiness_checks]])
		timeouts?: #timeouts

		// Client-specified annotations. This is distinct from labels.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// Status conditions describing the current resource state.
		conditions?: [...close({
			code?: number
			details?: [...{
				[string]: string
			}]
			message?: string
		})]

		// Time when this resource was created.
		create_time?: string

		// Whether this resource is in degraded mode, in which case it may
		// require user action to restore full functionality. Details can
		// be found in the conditions field.
		degraded?: bool

		// Disables support for plain TCP connections in the workstation.
		// By default the service supports TCP connections via a
		// websocket relay. Setting this option to true disables that
		// relay, which prevents the usage of services that require plain
		// tcp connections, such as ssh. When enabled, all communication
		// must occur over https or wss.
		disable_tcp_connections?: bool

		// Human-readable name for this resource.
		display_name?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Whether to enable Linux 'auditd' logging on the workstation.
		// When enabled, a service account must also be specified that
		// has 'logging.buckets.write' permission on the project.
		// Operating system audit logging is distinct from Cloud Audit
		// Logs.
		enable_audit_agent?: bool

		// Checksum computed by the server.
		// May be sent on update and delete requests to ensure that the
		// client has an up-to-date value before proceeding.
		etag?: string
		id?:   string

		// How long to wait before automatically stopping an instance that
		// hasn't recently received any user traffic. A value of 0
		// indicates that this instance should never time out from
		// idleness. Defaults to 20 minutes.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		idle_timeout?: string

		// Client-specified labels that are applied to the resource and
		// that are also propagated to the underlying Compute Engine
		// resources.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location where the workstation cluster config should
		// reside.
		location!: string

		// Maximum number of workstations under this configuration a user
		// can have workstations.workstation.use permission on. Only
		// enforced on CreateWorkstation API calls on the user issuing
		// the API request.
		max_usable_workstations?: number

		// Full name of this resource.
		name?:    string
		project?: string

		// Specifies the zones used to replicate the VM and disk resources
		// within the region. If set, exactly two zones within the
		// workstation cluster's region must be specified—for example,
		// '['us-central1-a', 'us-central1-f']'.
		// If this field is empty, two default zones within the region are
		// used. Immutable after the workstation configuration is
		// created.
		replica_zones?: [...string]

		// How long to wait before automatically stopping a workstation
		// after it was started. A value of 0 indicates that workstations
		// using this configuration should never time out from running
		// duration. Must be greater than 0 and less than 24 hours if
		// 'encryption_key' is set. Defaults to 12 hours.
		// A duration in seconds with up to nine fractional digits, ending
		// with 's'. Example: "3.5s".
		running_timeout?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The system-generated UID of the resource.
		uid?: string

		// The ID of the parent workstation cluster.
		workstation_cluster_id!: string

		// The ID to be assigned to the workstation cluster config.
		workstation_config_id!: string
	})

	#allowed_ports: close({
		// Starting port number for the current range of ports. Valid
		// ports are 22, 80, and ports within the range 1024-65535.
		first?: number

		// Ending port number for the current range of ports. Valid ports
		// are 22, 80, and ports within the range 1024-65535.
		last?: number
	})

	#container: close({
		// Arguments passed to the entrypoint.
		args?: [...string]

		// If set, overrides the default ENTRYPOINT specified by the
		// image.
		command?: [...string]

		// Environment variables passed to the container.
		// The elements are of the form "KEY=VALUE" for the environment
		// variable "KEY" being given the value "VALUE".
		env?: [string]: string

		// Docker image defining the container. This image must be
		// accessible by the config's service account.
		image?: string

		// If set, overrides the USER specified in the image with the
		// given uid.
		run_as_user?: number

		// If set, overrides the default DIR specified by the image.
		working_dir?: string
	})

	#encryption_key: close({
		// The name of the Google Cloud KMS encryption key.
		kms_key!: string

		// The service account to use with the specified KMS key.
		kms_key_service_account!: string
	})

	#ephemeral_directories: close({
		gce_pd?: matchN(1, [_#defs."/$defs/ephemeral_directories/$defs/gce_pd", list.MaxItems(1) & [..._#defs."/$defs/ephemeral_directories/$defs/gce_pd"]])

		// Location of this directory in the running workstation.
		mount_path?: string
	})

	#host: close({
		gce_instance?: matchN(1, [_#defs."/$defs/host/$defs/gce_instance", list.MaxItems(1) & [..._#defs."/$defs/host/$defs/gce_instance"]])
	})

	#persistent_directories: close({
		gce_pd?: matchN(1, [_#defs."/$defs/persistent_directories/$defs/gce_pd", list.MaxItems(1) & [..._#defs."/$defs/persistent_directories/$defs/gce_pd"]])

		// Location of this directory in the running workstation.
		mount_path?: string
	})

	#readiness_checks: close({
		// Path to which the request should be sent.
		path!: string

		// Port to which the request should be sent.
		port!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/ephemeral_directories/$defs/gce_pd": close({
		// Type of the disk to use. Defaults to '"pd-standard"'.
		disk_type?: string

		// Whether the disk is read only. If true, the disk may be shared
		// by multiple VMs and 'sourceSnapshot' must be set.
		read_only?: bool

		// Name of the disk image to use as the source for the disk.
		//
		// Must be empty 'sourceSnapshot' is set.
		// Updating 'sourceImage' will update content in the ephemeral
		// directory after the workstation is restarted.
		source_image?: string

		// Name of the snapshot to use as the source for the disk.
		//
		// Must be empty if 'sourceImage' is set.
		// Must be empty if 'read_only' is false.
		// Updating 'source_snapshot' will update content in the ephemeral
		// directory after the workstation is restarted.
		source_snapshot?: string
	})

	_#defs: "/$defs/host/$defs/gce_instance": close({
		accelerators?: matchN(1, [_#defs."/$defs/host/$defs/gce_instance/$defs/accelerators", [..._#defs."/$defs/host/$defs/gce_instance/$defs/accelerators"]])
		boost_configs?: matchN(1, [_#defs."/$defs/host/$defs/gce_instance/$defs/boost_configs", [..._#defs."/$defs/host/$defs/gce_instance/$defs/boost_configs"]])
		confidential_instance_config?: matchN(1, [_#defs."/$defs/host/$defs/gce_instance/$defs/confidential_instance_config", list.MaxItems(1) & [..._#defs."/$defs/host/$defs/gce_instance/$defs/confidential_instance_config"]])
		shielded_instance_config?: matchN(1, [_#defs."/$defs/host/$defs/gce_instance/$defs/shielded_instance_config", list.MaxItems(1) & [..._#defs."/$defs/host/$defs/gce_instance/$defs/shielded_instance_config"]])

		// Size of the boot disk in GB.
		boot_disk_size_gb?: number

		// Whether instances have no public IP address.
		disable_public_ip_addresses?: bool

		// Whether to disable SSH access to the VM.
		disable_ssh?: bool

		// Whether to enable nested virtualization on the Compute Engine
		// VMs backing the Workstations.
		//
		// See
		// https://cloud.google.com/workstations/docs/reference/rest/v1/projects.locations.workstationClusters.workstationConfigs#GceInstance.FIELDS.enable_nested_virtualization
		enable_nested_virtualization?: bool

		// The name of a Compute Engine machine type.
		machine_type?: string

		// Number of instances to pool for faster workstation startup.
		pool_size?: number

		// Email address of the service account that will be used on VM
		// instances used to support this config. This service account
		// must have permission to pull the specified container image. If
		// not set, VMs will run without a service account, in which case
		// the image must be publicly accessible.
		service_account?: string

		// Scopes to grant to the service_account. Various scopes are
		// automatically added based on feature usage. When specified,
		// users of workstations under this configuration must have
		// 'iam.serviceAccounts.actAs' on the service account.
		service_account_scopes?: [...string]

		// Network tags to add to the Compute Engine machines backing the
		// Workstations.
		tags?: [...string]

		// Resource manager tags to be bound to the VM instances backing
		// the Workstations.
		// Tag keys and values have the same definition as
		// https://docs.cloud.google.com/resource-manager/docs/tags/tags-overview
		// Keys must be in the format 'tagKeys/{tag_key_id}', and
		// values are in the format 'tagValues/456'.
		vm_tags?: [string]: string
	})

	_#defs: "/$defs/host/$defs/gce_instance/$defs/accelerators": close({
		// Number of accelerator cards exposed to the instance.
		count!: number

		// Type of accelerator resource to attach to the instance, for
		// example, "nvidia-tesla-p100".
		type!: string
	})

	_#defs: "/$defs/host/$defs/gce_instance/$defs/boost_configs": close({
		accelerators?: matchN(1, [_#defs."/$defs/host/$defs/gce_instance/$defs/boost_configs/$defs/accelerators", [..._#defs."/$defs/host/$defs/gce_instance/$defs/boost_configs/$defs/accelerators"]])

		// Size of the boot disk in GB. The minimum boot disk size is '30'
		// GB. Defaults to '50' GB.
		boot_disk_size_gb?: number

		// Whether to enable nested virtualization on the Compute Engine
		// VMs backing boosted Workstations.
		//
		// See
		// https://cloud.google.com/workstations/docs/reference/rest/v1/projects.locations.workstationClusters.workstationConfigs#GceInstance.FIELDS.enable_nested_virtualization
		enable_nested_virtualization?: bool

		// The id to be used for the boost config.
		id!: string

		// The type of machine that boosted VM instances will use—for
		// example, e2-standard-4. For more information about machine
		// types that Cloud Workstations supports, see the list of
		// available machine types
		// https://cloud.google.com/workstations/docs/available-machine-types.
		// Defaults to e2-standard-4.
		machine_type?: string

		// Number of instances to pool for faster workstation boosting.
		pool_size?: number
	})

	_#defs: "/$defs/host/$defs/gce_instance/$defs/boost_configs/$defs/accelerators": close({
		// Number of accelerator cards exposed to the instance.
		count!: number

		// Type of accelerator resource to attach to the instance, for
		// example, "nvidia-tesla-p100".
		type!: string
	})

	_#defs: "/$defs/host/$defs/gce_instance/$defs/confidential_instance_config": close({
		// Whether the instance has confidential compute enabled.
		enable_confidential_compute?: bool
	})

	_#defs: "/$defs/host/$defs/gce_instance/$defs/shielded_instance_config": close({
		// Whether the instance has integrity monitoring enabled.
		enable_integrity_monitoring?: bool

		// Whether the instance has Secure Boot enabled.
		enable_secure_boot?: bool

		// Whether the instance has the vTPM enabled.
		enable_vtpm?: bool
	})

	_#defs: "/$defs/persistent_directories/$defs/gce_pd": close({
		// The type of the persistent disk for the home directory.
		// Defaults to 'pd-standard'.
		disk_type?: string

		// Type of file system that the disk should be formatted with. The
		// workstation image must support this file system type. Must be
		// empty if 'sourceSnapshot' is set. Defaults to 'ext4'.
		fs_type?: string

		// Whether the persistent disk should be deleted when the
		// workstation is deleted. Valid values are 'DELETE' and
		// 'RETAIN'. Defaults to 'DELETE'. Possible values: ["DELETE",
		// "RETAIN"]
		reclaim_policy?: string

		// The GB capacity of a persistent home directory for each
		// workstation created with this configuration. Must be empty if
		// 'sourceSnapshot' is set.
		// Valid values are '10', '50', '100', '200', '500', or '1000'.
		// Defaults to '200'. If less than '200' GB, the 'diskType' must
		// be 'pd-balanced' or 'pd-ssd'.
		size_gb?: number

		// Name of the snapshot to use as the source for the disk. This
		// can be the snapshot's 'self_link', 'id', or a string in the
		// format of 'projects/{project}/global/snapshots/{snapshot}'. If
		// set, 'sizeGb' and 'fsType' must be empty. Can only be updated
		// if it has an existing value.
		source_snapshot?: string
	})
}
