package res

import "list"

#google_container_azure_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_container_azure_cluster")
	close({
		// Optional. Annotations on the cluster. This field has the same
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

		// The Azure region where the cluster runs. Each Google Cloud
		// region supports a subset of nearby Azure regions. You can call
		// to list all supported Azure regions within a given Google
		// Cloud region.
		azure_region!: string

		// Name of the AzureClient. The `AzureClient` resource must reside
		// on the same GCP project and region as the `AzureCluster`.
		// `AzureClient` names are formatted as
		// `projects/<project-number>/locations/<region>/azureClients/<client-id>`.
		// See Resource Names
		// (https:cloud.google.com/apis/design/resource_names) for more
		// details on Google Cloud resource names.
		client?: string

		// Output only. The time at which this cluster was created.
		create_time?: string

		// Optional. A human readable description of this cluster. Cannot
		// be longer than 255 UTF-8 encoded bytes.
		description?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// Output only. The endpoint of the cluster's API server.
		endpoint?: string

		// Allows clients to perform consistent read-modify-writes through
		// optimistic concurrency control. May be sent on update and
		// delete requests to ensure the client has an up-to-date value
		// before proceeding.
		etag?: string

		// The location for the resource
		location!: string

		// The name of this resource.
		name!: string

		// The project for the resource
		project?: string
		id?:      string

		// Output only. If set, there are currently changes in flight to
		// the cluster.
		reconciling?: bool
		authorization!: matchN(1, [#authorization, list.MaxItems(1) & [_, ...] & [...#authorization]])
		azure_services_authentication?: matchN(1, [#azure_services_authentication, list.MaxItems(1) & [...#azure_services_authentication]])
		control_plane!: matchN(1, [#control_plane, list.MaxItems(1) & [_, ...] & [...#control_plane]])
		fleet!: matchN(1, [#fleet, list.MaxItems(1) & [_, ...] & [...#fleet]])
		networking!: matchN(1, [#networking, list.MaxItems(1) & [_, ...] & [...#networking]])
		timeouts?: #timeouts

		// The ARM ID of the resource group where the cluster resources
		// are deployed. For example: `/subscriptions/*/resourceGroups/*`
		resource_group_id!: string

		// Output only. The current state of the cluster. Possible values:
		// STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING,
		// STOPPING, ERROR, DEGRADED
		state?: string

		// Output only. A globally unique identifier for the cluster.
		uid?: string

		// Output only. The time at which this cluster was last updated.
		update_time?: string

		// Output only. Workload Identity settings.
		workload_identity_config?: [...close({
			identity_provider?: string
			issuer_uri?:        string
			workload_pool?:     string
		})]
	})

	#authorization: close({
		admin_groups?: matchN(1, [_#defs."/$defs/authorization/$defs/admin_groups", [..._#defs."/$defs/authorization/$defs/admin_groups"]])
		admin_users!: matchN(1, [_#defs."/$defs/authorization/$defs/admin_users", [_, ...] & [..._#defs."/$defs/authorization/$defs/admin_users"]])
	})

	#azure_services_authentication: close({
		// The Azure Active Directory Application ID for Authentication
		// configuration.
		application_id!: string

		// The Azure Active Directory Tenant ID for Authentication
		// configuration.
		tenant_id!: string
	})

	#control_plane: close({
		// The ARM ID of the subnet where the control plane VMs are
		// deployed. Example:
		// `/subscriptions//resourceGroups//providers/Microsoft.Network/virtualNetworks//subnets/default`.
		subnet_id!: string

		// Optional. A set of tags to apply to all underlying control
		// plane Azure resources.
		tags?: [string]: string

		// The Kubernetes version to run on control plane replicas (e.g.
		// `1.19.10-gke.1000`). You can list all supported versions on a
		// given Google Cloud region by calling GetAzureServerConfig.
		version!: string
		database_encryption?: matchN(1, [_#defs."/$defs/control_plane/$defs/database_encryption", list.MaxItems(1) & [..._#defs."/$defs/control_plane/$defs/database_encryption"]])
		main_volume?: matchN(1, [_#defs."/$defs/control_plane/$defs/main_volume", list.MaxItems(1) & [..._#defs."/$defs/control_plane/$defs/main_volume"]])
		proxy_config?: matchN(1, [_#defs."/$defs/control_plane/$defs/proxy_config", list.MaxItems(1) & [..._#defs."/$defs/control_plane/$defs/proxy_config"]])
		replica_placements?: matchN(1, [_#defs."/$defs/control_plane/$defs/replica_placements", [..._#defs."/$defs/control_plane/$defs/replica_placements"]])

		// Optional. The Azure VM size name. Example: `Standard_DS2_v2`.
		// For available VM sizes, see
		// https://docs.microsoft.com/en-us/azure/virtual-machines/vm-naming-conventions.
		// When unspecified, it defaults to `Standard_DS2_v2`.
		vm_size?: string
		root_volume?: matchN(1, [_#defs."/$defs/control_plane/$defs/root_volume", list.MaxItems(1) & [..._#defs."/$defs/control_plane/$defs/root_volume"]])
		ssh_config!: matchN(1, [_#defs."/$defs/control_plane/$defs/ssh_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/control_plane/$defs/ssh_config"]])
	})

	#fleet: close({
		// The name of the managed Hub Membership resource associated to
		// this cluster. Membership names are formatted as
		// projects/<project-number>/locations/global/membership/<cluster-id>.
		membership?: string

		// The number of the Fleet host project where this cluster will be
		// registered.
		project?: string
	})

	#networking: close({
		// The IP address range of the pods in this cluster, in CIDR
		// notation (e.g. `10.96.0.0/14`). All pods in the cluster get
		// assigned a unique RFC1918 IPv4 address from these ranges. Only
		// a single range is supported. This field cannot be changed
		// after creation.
		pod_address_cidr_blocks!: [...string]

		// The IP address range for services in this cluster, in CIDR
		// notation (e.g. `10.96.0.0/14`). All services in the cluster
		// get assigned a unique RFC1918 IPv4 address from these ranges.
		// Only a single range is supported. This field cannot be changed
		// after creating a cluster.
		service_address_cidr_blocks!: [...string]

		// The Azure Resource Manager (ARM) ID of the VNet associated with
		// your cluster. All components in the cluster (i.e. control
		// plane and node pools) run on a single VNet. Example:
		// `/subscriptions/*/resourceGroups/*/providers/Microsoft.Network/virtualNetworks/*`
		// This field cannot be changed after creation.
		virtual_network_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/authorization/$defs/admin_groups": close({
		// The name of the group, e.g. `my-group@domain.com`.
		group!: string
	})

	_#defs: "/$defs/authorization/$defs/admin_users": close({
		// The name of the user, e.g. `my-gcp-id@gmail.com`.
		username!: string
	})

	_#defs: "/$defs/control_plane/$defs/database_encryption": close({
		// The ARM ID of the Azure Key Vault key to encrypt / decrypt
		// data. For example:
		// `/subscriptions/<subscription-id>/resourceGroups/<resource-group-id>/providers/Microsoft.KeyVault/vaults/<key-vault-id>/keys/<key-name>`
		// Encryption will always take the latest version of the key and
		// hence specific version is not supported.
		key_id!: string
	})

	_#defs: "/$defs/control_plane/$defs/main_volume": close({
		// Optional. The size of the disk, in GiBs. When unspecified, a
		// default value is provided. See the specific reference in the
		// parent resource.
		size_gib?: number
	})

	_#defs: "/$defs/control_plane/$defs/proxy_config": close({
		// The ARM ID the of the resource group containing proxy keyvault.
		// Resource group ids are formatted as
		// `/subscriptions/<subscription-id>/resourceGroups/<resource-group-name>`
		resource_group_id!: string

		// The URL the of the proxy setting secret with its version.
		// Secret ids are formatted as
		// `https:<key-vault-name>.vault.azure.net/secrets/<secret-name>/<secret-version>`.
		secret_id!: string
	})

	_#defs: "/$defs/control_plane/$defs/replica_placements": close({
		// For a given replica, the Azure availability zone where to
		// provision the control plane VM and the ETCD disk.
		azure_availability_zone!: string

		// For a given replica, the ARM ID of the subnet where the control
		// plane VM is deployed. Make sure it's a subnet under the
		// virtual network in the cluster configuration.
		subnet_id!: string
	})

	_#defs: "/$defs/control_plane/$defs/root_volume": close({
		// Optional. The size of the disk, in GiBs. When unspecified, a
		// default value is provided. See the specific reference in the
		// parent resource.
		size_gib?: number
	})

	_#defs: "/$defs/control_plane/$defs/ssh_config": close({
		// The SSH public key data for VMs managed by Anthos. This accepts
		// the authorized_keys file format used in OpenSSH according to
		// the sshd(8) manual page.
		authorized_key!: string
	})
}
