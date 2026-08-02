package res

import "list"

google_vertex_ai_persistent_resource: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_vertex_ai_persistent_resource")
	close({
		encryption_spec?: matchN(1, [#encryption_spec, list.MaxItems(1) & [...#encryption_spec]])
		psc_interface_config?: matchN(1, [#psc_interface_config, list.MaxItems(1) & [...#psc_interface_config]])
		resource_pools!: matchN(1, [#resource_pools, [_, ...] & [...#resource_pools]])
		resource_runtime_spec?: matchN(1, [#resource_runtime_spec, list.MaxItems(1) & [...#resource_runtime_spec]])
		timeouts?: #timeouts

		// Time when the PersistentResource was created.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// The display name of the PersistentResource.
		// The name can be up to 128 characters long and can consist of any UTF-8
		// characters.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// The 'Status' type defines a logical error model that is suitable for
		// different programming environments, including REST APIs and RPC APIs. It is
		// used by [gRPC](https://github.com/grpc). Each 'Status' message contains
		// three pieces of data: error code, error message, and error details.
		//
		// You can find out more about this error model and how to work with it in the
		// [API Design Guide](https://cloud.google.com/apis/design/errors).
		error?: [...close({
			code?:    number
			message?: string
		})]
		id?: string

		// The labels with user-defined metadata to organize PersistentResource.
		//
		// Label keys and values can be no longer than 64 characters
		// (Unicode codepoints), can only contain lowercase letters, numeric
		// characters, underscores and dashes. International characters are allowed.
		//
		// See https://goo.gl/xmQnxf for more information and examples of labels.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The location of the PersistentResource. eg us-central1
		location?: string

		// The ID to use for the PersistentResource, which become the final component
		// of the PersistentResource's resource name.
		//
		// The maximum length is 63 characters, and valid characters
		// are '/^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$/'.
		name!: string

		// The full name of the Compute Engine
		// [network](/compute/docs/networks-and-firewalls#networks) to peered with
		// Vertex AI to host the persistent resources.
		// For example, 'projects/12345/global/networks/myVPC'.
		// [Format](/compute/docs/reference/rest/v1/networks/insert)
		// is of the form 'projects/{project}/global/networks/{network}'.
		// Where {project} is a project number, as in '12345', and {network} is a
		// network name.
		//
		// To specify this field, you must have already [configured VPC Network
		// Peering for Vertex
		// AI](https://cloud.google.com/vertex-ai/docs/general/vpc-peering).
		//
		// If this field is left unspecified, the resources aren't peered with any
		// network.
		network?: string

		// A list of names for the reserved IP ranges under the VPC network
		// that can be used for this persistent resource.
		//
		// If set, we will deploy the persistent resource within the provided IP
		// ranges. Otherwise, the persistent resource is deployed to any IP
		// ranges under the provided VPC network.
		//
		// Example: ['vertex-ai-ip-range'].
		reserved_ip_ranges?: [...string]
		project?: string

		// Persistent Cluster runtime information as output
		resource_runtime?: [...close({
			access_uris?: [string]: string
		})]

		// Reserved for future use.
		satisfies_pzi?: bool

		// Reserved for future use.
		satisfies_pzs?: bool

		// Time when the PersistentResource for the first time entered the 'RUNNING'
		// state.
		start_time?: string

		// The detailed state of a PersistentResource.
		// Possible values:
		// PROVISIONING
		// RUNNING
		// STOPPING
		// ERROR
		// REBOOTING
		// UPDATING
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Time when the PersistentResource was most recently updated.
		update_time?: string
	})

	#encryption_spec: close({
		// Resource name of the Cloud KMS key used to protect the resource.
		//
		// The Cloud KMS key must be in the same region as the resource. It must have
		// the format
		// 'projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}'.
		kms_key_name!: string
	})

	#psc_interface_config: close({
		dns_peering_configs?: matchN(1, [_#defs."/$defs/psc_interface_config/$defs/dns_peering_configs", [..._#defs."/$defs/psc_interface_config/$defs/dns_peering_configs"]])

		// The name of the Compute Engine
		// [network
		// attachment](https://cloud.google.com/vpc/docs/about-network-attachments) to
		// attach to the resource within the region and user project.
		// To specify this field, you must have already [created a network attachment]
		// (https://cloud.google.com/vpc/docs/create-manage-network-attachments#create-network-attachments).
		// This field is only used for resources using PSC-I.
		network_attachment?: string
	})

	#resource_pools: close({
		autoscaling_spec?: matchN(1, [_#defs."/$defs/resource_pools/$defs/autoscaling_spec", list.MaxItems(1) & [..._#defs."/$defs/resource_pools/$defs/autoscaling_spec"]])
		disk_spec?: matchN(1, [_#defs."/$defs/resource_pools/$defs/disk_spec", list.MaxItems(1) & [..._#defs."/$defs/resource_pools/$defs/disk_spec"]])
		machine_spec!: matchN(1, [_#defs."/$defs/resource_pools/$defs/machine_spec", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/resource_pools/$defs/machine_spec"]])

		// The unique ID in a PersistentResource for referring to this resource pool.
		// User can specify it if necessary. Otherwise, it's generated
		// automatically.
		id?: string

		// The total number of machines to use for this resource pool.
		replica_count?: string

		// The number of machines currently in use by training jobs for this resource
		// pool. Will replace idle_replica_count.
		used_replica_count?: string
	})

	#resource_runtime_spec: close({
		service_account_spec?: matchN(1, [_#defs."/$defs/resource_runtime_spec/$defs/service_account_spec", list.MaxItems(1) & [..._#defs."/$defs/resource_runtime_spec/$defs/service_account_spec"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/psc_interface_config/$defs/dns_peering_configs": close({
		// The DNS name suffix of the zone being peered to, e.g.,
		// "my-internal-domain.corp.". Must end with a dot.
		domain!: string

		// The VPC network name
		// in the target_project where the DNS zone specified by 'domain' is
		// visible.
		target_network!: string

		// The project ID hosting the Cloud DNS managed zone that
		// contains the 'domain'. The Vertex AI Service Agent requires the
		// dns.peer role on this project.
		target_project!: string
	})

	_#defs: "/$defs/resource_pools/$defs/autoscaling_spec": close({
		// max replicas in the node pool,
		// must be ≥ replica_count and > min_replica_count or will throw error
		max_replica_count?: string

		// min replicas in the node pool,
		// must be ≤ replica_count and < max_replica_count or will throw error.
		// For autoscaling enabled Ray-on-Vertex, we allow min_replica_count of a
		// resource_pool to be 0 to match the OSS Ray
		// behavior(https://docs.ray.io/en/latest/cluster/vms/user-guides/configuring-autoscaling.html#cluster-config-parameters).
		// As for Persistent Resource, the min_replica_count must be > 0, we added
		// a corresponding validation inside
		// CreatePersistentResourceRequestValidator.java.
		min_replica_count?: string
	})

	_#defs: "/$defs/resource_pools/$defs/disk_spec": close({
		// Size in GB of the boot disk (default is 100GB).
		boot_disk_size_gb?: number

		// Type of the boot disk. For non-A3U machines, the default value is
		// "pd-ssd", for A3U machines, the default value is "hyperdisk-balanced".
		// Valid values: "pd-ssd" (Persistent Disk Solid State Drive),
		// "pd-standard" (Persistent Disk Hard Disk Drive) or "hyperdisk-balanced".
		boot_disk_type?: string
	})

	_#defs: "/$defs/resource_pools/$defs/machine_spec": close({
		// The number of accelerators to attach to the machine.
		accelerator_count?: number

		// The type of accelerator(s) that may be attached to the machine.
		// Possible values:
		// NVIDIA_TESLA_K80
		// NVIDIA_TESLA_P100
		// NVIDIA_TESLA_V100
		// NVIDIA_TESLA_P4
		// NVIDIA_TESLA_T4
		// NVIDIA_TESLA_A100
		// NVIDIA_A100_80GB
		// NVIDIA_L4
		// NVIDIA_H100_80GB
		// NVIDIA_H100_MEGA_80GB
		// NVIDIA_H200_141GB
		// NVIDIA_B200
		// NVIDIA_GB200
		// NVIDIA_RTX_PRO_6000
		// TPU_V2
		// TPU_V3
		// TPU_V4_POD
		// TPU_V5_LITEPOD
		accelerator_type?: string

		// The type of the machine.
		//
		// See the [list of machine types supported for
		// prediction](https://cloud.google.com/vertex-ai/docs/predictions/configure-compute#machine-types)
		//
		// See the [list of machine types supported for custom
		// training](https://cloud.google.com/vertex-ai/docs/training/configure-compute#machine-types).
		machine_type?: string
	})

	_#defs: "/$defs/resource_runtime_spec/$defs/service_account_spec": close({
		// If true, custom user-managed service account is enforced to run any
		// workloads (for example, Vertex Jobs) on the resource.
		// Otherwise, uses the [Vertex AI Custom Code Service
		// Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents).
		enable_custom_service_account!: bool
	})
}
