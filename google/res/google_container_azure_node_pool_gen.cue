package res

import "list"

#google_container_azure_node_pool: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_azure_node_pool")
	close({
		// Optional. Annotations on the node pool. This field has the same
		// restrictions as Kubernetes annotations. The total size of all
		// keys and values combined is limited to 256k. Keys can have 2
		// segments: prefix (optional) and name (required), separated by
		// a slash (/). Prefix must be a DNS subdomain. Name must be 63
		// characters or less, begin and end with alphanumerics, with
		// dashes (-), underscores (_), dots (.), and alphanumerics
		// between.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field `effective_annotations` for all of
		// the annotations present on the resource.
		annotations?: [string]: string
		autoscaling?: matchN(1, [#autoscaling, list.MaxItems(1) & [_, ...] & [...#autoscaling]])

		// Optional. The Azure availability zone of the nodes in this
		// nodepool. When unspecified, it defaults to `1`.
		azure_availability_zone?: string

		// The azureCluster for the resource
		cluster!: string

		// Output only. The time at which this node pool was created.
		create_time?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// Allows clients to perform consistent read-modify-writes through
		// optimistic concurrency control. May be sent on update and
		// delete requests to ensure the client has an up-to-date value
		// before proceeding.
		etag?: string
		id?:   string

		// The location for the resource
		location!: string

		// The name of this resource.
		name!: string

		// The project for the resource
		project?: string

		// Output only. If set, there are currently pending changes to the
		// node pool.
		reconciling?: bool
		config?: matchN(1, [#config, list.MaxItems(1) & [_, ...] & [...#config]])
		management?: matchN(1, [#management, list.MaxItems(1) & [...#management]])
		max_pods_constraint?: matchN(1, [#max_pods_constraint, list.MaxItems(1) & [_, ...] & [...#max_pods_constraint]])
		timeouts?: #timeouts

		// Output only. The current state of the node pool. Possible
		// values: STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING,
		// STOPPING, ERROR, DEGRADED
		state?: string

		// The ARM ID of the subnet where the node pool VMs run. Make sure
		// it's a subnet under the virtual network in the cluster
		// configuration.
		subnet_id!: string

		// Output only. A globally unique identifier for the node pool.
		uid?: string

		// Output only. The time at which this node pool was last updated.
		update_time?: string

		// The Kubernetes version (e.g. `1.19.10-gke.1000`) running on
		// this node pool.
		version!: string
	})

	#autoscaling: close({
		// Maximum number of nodes in the node pool. Must be >=
		// min_node_count.
		max_node_count!: number

		// Minimum number of nodes in the node pool. Must be >= 1 and <=
		// max_node_count.
		min_node_count!: number
	})

	#config: close({
		// Optional. The initial labels assigned to nodes of this node
		// pool. An object containing a list of "key": value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		labels?: [string]: string
		proxy_config?: matchN(1, [_#defs."/$defs/config/$defs/proxy_config", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/proxy_config"]])

		// Optional. A set of tags to apply to all underlying Azure
		// resources for this node pool. This currently only includes
		// Virtual Machine Scale Sets. Specify at most 50 pairs
		// containing alphanumerics, spaces, and symbols (.+-=_:@/). Keys
		// can be up to 127 Unicode characters. Values can be up to 255
		// Unicode characters.
		tags?: [string]: string

		// Optional. The Azure VM size name. Example: `Standard_DS2_v2`.
		// See (/anthos/clusters/docs/azure/reference/supported-vms) for
		// options. When unspecified, it defaults to `Standard_DS2_v2`.
		vm_size?: string
		root_volume?: matchN(1, [_#defs."/$defs/config/$defs/root_volume", list.MaxItems(1) & [..._#defs."/$defs/config/$defs/root_volume"]])
		ssh_config?: matchN(1, [_#defs."/$defs/config/$defs/ssh_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/config/$defs/ssh_config"]])
	})

	#management: close({
		// Optional. Whether or not the nodes will be automatically
		// repaired.
		auto_repair?: bool
	})

	#max_pods_constraint: close({
		// The maximum number of pods to schedule on a single node.
		max_pods_per_node!: number
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/config/$defs/proxy_config": close({
		// The ARM ID the of the resource group containing proxy keyvault.
		// Resource group ids are formatted as
		// `/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>`
		resource_group_id!: string

		// The URL the of the proxy setting secret with its version.
		// Secret ids are formatted as
		// `https:<key-vault-name>.vault.azure.net/secrets/<secret-name>/<secret-version>`.
		secret_id!: string
	})

	_#defs: "/$defs/config/$defs/root_volume": close({
		// Optional. The size of the disk, in GiBs. When unspecified, a
		// default value is provided. See the specific reference in the
		// parent resource.
		size_gib?: number
	})

	_#defs: "/$defs/config/$defs/ssh_config": close({
		// The SSH public key data for VMs managed by Anthos. This accepts
		// the authorized_keys file format used in OpenSSH according to
		// the sshd(8) manual page.
		authorized_key!: string
	})
}
