package res

import "list"

#google_gkeonprem_vmware_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_gkeonprem_vmware_cluster")
	close({
		// The admin cluster this VMware User Cluster belongs to.
		// This is the full resource name of the admin cluster's hub
		// membership.
		// In the future, references to other resource types might be
		// allowed if
		// admin clusters are modeled as their own resources.
		admin_cluster_membership!: string
		anti_affinity_groups?: matchN(1, [#anti_affinity_groups, list.MaxItems(1) & [...#anti_affinity_groups]])

		// Annotations on the VMware User Cluster.
		// This field has the same restrictions as Kubernetes annotations.
		// The total size of all keys and values combined is limited to
		// 256k.
		// Key can have 2 segments: prefix (optional) and name (required),
		// separated by a slash (/).
		// Prefix must be a DNS subdomain.
		// Name must be 63 characters or less, begin and end with
		// alphanumerics,
		// with dashes (-), underscores (_), dots (.), and alphanumerics
		// between.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// The time at which VMware User Cluster was created.
		create_time?: string

		// The time at which VMware User Cluster was deleted.
		delete_time?: string

		// A human readable description of this VMware User Cluster.
		description?: string

		// Disable bundled ingress.
		disable_bundled_ingress?: bool

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// Enable advanced cluster. Default to false.
		enable_advanced_cluster?: bool

		// Enable control plane V2. Default to false.
		enable_control_plane_v2?: bool

		// The DNS name of VMware User Cluster's API server.
		endpoint?: string

		// This checksum is computed by the server based on the value of
		// other
		// fields, and may be sent on update and delete requests to ensure
		// the
		// client has an up-to-date value before proceeding.
		// Allows clients to perform consistent read-modify-writes
		// through optimistic concurrency control.
		etag?: string

		// Fleet configuration for the cluster.
		fleet?: [...close({
			membership?: string
		})]
		id?: string

		// The object name of the VMware OnPremUserCluster custom resource
		// on the
		// associated admin cluster. This field is used to support
		// conflicting
		// names when enrolling existing clusters to the API. When used as
		// a part of
		// cluster enrollment, this field will differ from the ID in the
		// resource
		// name. For new clusters, this field will match the user provided
		// cluster ID
		// and be visible in the last component of the resource name. It
		// is not
		// modifiable.
		//
		// All users should use this name to access their cluster using
		// gkectl or
		// kubectl and should expect to see the local name when viewing
		// admin
		// cluster controller logs.
		local_name?: string
		authorization?: matchN(1, [#authorization, list.MaxItems(1) & [...#authorization]])

		// The location of the resource.
		location!: string
		auto_repair_config?: matchN(1, [#auto_repair_config, list.MaxItems(1) & [...#auto_repair_config]])
		control_plane_node!: matchN(1, [#control_plane_node, list.MaxItems(1) & [_, ...] & [...#control_plane_node]])
		dataplane_v2?: matchN(1, [#dataplane_v2, list.MaxItems(1) & [...#dataplane_v2]])
		load_balancer?: matchN(1, [#load_balancer, list.MaxItems(1) & [...#load_balancer]])
		network_config?: matchN(1, [#network_config, list.MaxItems(1) & [...#network_config]])
		storage?: matchN(1, [#storage, list.MaxItems(1) & [...#storage]])
		timeouts?: #timeouts
		upgrade_policy?: matchN(1, [#upgrade_policy, list.MaxItems(1) & [...#upgrade_policy]])
		vcenter?: matchN(1, [#vcenter, list.MaxItems(1) & [...#vcenter]])

		// The VMware cluster name.
		name!: string

		// The Anthos clusters on the VMware version for your user
		// cluster.
		on_prem_version!: string
		project?:         string

		// If set, there are currently changes in flight to the VMware
		// User Cluster.
		reconciling?: bool

		// The current state of this cluster.
		state?: string

		// ResourceStatus representing detailed cluster state.
		status?: [...close({
			conditions?: [...close({
				last_transition_time?: string
				message?:              string
				reason?:               string
				state?:                string
				type?:                 string
			})]
			error_message?: string
		})]

		// The unique identifier of the VMware User Cluster.
		uid?: string

		// The time at which VMware User Cluster was last updated.
		update_time?: string

		// ValidationCheck represents the result of the preflight check
		// job.
		validation_check?: [...close({
			options?:  string
			scenario?: string
			status?: [...close({
				result?: [...close({
					category?:    string
					description?: string
					details?:     string
					options?:     string
					reason?:      string
				})]
			})]
		})]

		// Enable VM tracking.
		vm_tracking_enabled?: bool
	})

	#anti_affinity_groups: close({
		// Spread nodes across at least three physical hosts (requires at
		// least three
		// hosts).
		// Enabled by default.
		aag_config_disabled!: bool
	})

	#authorization: close({
		admin_users?: matchN(1, [_#defs."/$defs/authorization/$defs/admin_users", [..._#defs."/$defs/authorization/$defs/admin_users"]])
	})

	#auto_repair_config: close({
		// Whether auto repair is enabled.
		enabled!: bool
	})

	#control_plane_node: close({
		// The number of CPUs for each admin cluster node that serve as
		// control planes
		// for this VMware User Cluster. (default: 4 CPUs)
		cpus?: number

		// The megabytes of memory for each admin cluster node that serves
		// as a
		// control plane for this VMware User Cluster (default: 8192 MB
		// memory).
		memory?: number

		// The number of control plane nodes for this VMware User Cluster.
		// (default: 1 replica).
		replicas?: number
		auto_resize_config?: matchN(1, [_#defs."/$defs/control_plane_node/$defs/auto_resize_config", list.MaxItems(1) & [..._#defs."/$defs/control_plane_node/$defs/auto_resize_config"]])

		// Vsphere-specific config.
		vsphere_config?: [...close({
			datastore?:           string
			storage_policy_name?: string
		})]
	})

	#dataplane_v2: close({
		// Enable advanced networking which requires dataplane_v2_enabled
		// to be set true.
		advanced_networking?: bool

		// Enables Dataplane V2.
		dataplane_v2_enabled?: bool

		// Enable Dataplane V2 for clusters with Windows nodes.
		windows_dataplane_v2_enabled?: bool
	})

	#load_balancer: close({
		f5_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/f5_config", list.MaxItems(1) & [..._#defs."/$defs/load_balancer/$defs/f5_config"]])
		manual_lb_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/manual_lb_config", list.MaxItems(1) & [..._#defs."/$defs/load_balancer/$defs/manual_lb_config"]])
		metal_lb_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/metal_lb_config", list.MaxItems(1) & [..._#defs."/$defs/load_balancer/$defs/metal_lb_config"]])
		vip_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/vip_config", list.MaxItems(1) & [..._#defs."/$defs/load_balancer/$defs/vip_config"]])
	})

	#network_config: close({
		// All pods in the cluster are assigned an RFC1918 IPv4 address
		// from these ranges.
		// Only a single range is supported. This field cannot be changed
		// after creation.
		pod_address_cidr_blocks!: [...string]

		// All services in the cluster are assigned an RFC1918 IPv4
		// address
		// from these ranges. Only a single range is supported.. This
		// field
		// cannot be changed after creation.
		service_address_cidr_blocks!: [...string]

		// vcenter_network specifies vCenter network name. Inherited from
		// the admin cluster.
		vcenter_network?: string
		control_plane_v2_config?: matchN(1, [_#defs."/$defs/network_config/$defs/control_plane_v2_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/control_plane_v2_config"]])
		dhcp_ip_config?: matchN(1, [_#defs."/$defs/network_config/$defs/dhcp_ip_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/dhcp_ip_config"]])
		host_config?: matchN(1, [_#defs."/$defs/network_config/$defs/host_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/host_config"]])
		static_ip_config?: matchN(1, [_#defs."/$defs/network_config/$defs/static_ip_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/static_ip_config"]])
	})

	#storage: close({
		// Whether or not to deploy vSphere CSI components in the VMware
		// User Cluster.
		// Enabled by default.
		vsphere_csi_disabled!: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#upgrade_policy: close({
		// Controls whether the upgrade applies to the control plane only.
		control_plane_only?: bool
	})

	#vcenter: close({
		// The vCenter IP address.
		address?: string

		// Contains the vCenter CA certificate public key for SSL
		// verification.
		ca_cert_data?: string

		// The name of the vCenter cluster for the user cluster.
		cluster?: string

		// The name of the vCenter datacenter for the user cluster.
		datacenter?: string

		// The name of the vCenter datastore for the user cluster.
		datastore?: string

		// The name of the vCenter folder for the user cluster.
		folder?: string

		// The name of the vCenter resource pool for the user cluster.
		resource_pool?: string

		// The name of the vCenter storage policy for the user cluster.
		storage_policy_name?: string
	})

	_#defs: "/$defs/authorization/$defs/admin_users": close({
		// The name of the user, e.g. 'my-gcp-id@gmail.com'.
		username!: string
	})

	_#defs: "/$defs/control_plane_node/$defs/auto_resize_config": close({
		// Whether to enable control plane node auto resizing.
		enabled!: bool
	})

	_#defs: "/$defs/load_balancer/$defs/f5_config": close({
		// The load balancer's IP address.
		address?: string

		// he preexisting partition to be used by the load balancer. T
		// his partition is usually created for the admin cluster for
		// example:
		// 'my-f5-admin-partition'.
		partition?: string

		// The pool name. Only necessary, if using SNAT.
		snat_pool?: string
	})

	_#defs: "/$defs/load_balancer/$defs/manual_lb_config": close({
		// NodePort for control plane service. The Kubernetes API server
		// in the admin
		// cluster is implemented as a Service of type NodePort (ex.
		// 30968).
		control_plane_node_port?: number

		// NodePort for ingress service's http. The ingress service in the
		// admin
		// cluster is implemented as a Service of type NodePort (ex.
		// 32527).
		ingress_http_node_port?: number

		// NodePort for ingress service's https. The ingress service in
		// the admin
		// cluster is implemented as a Service of type NodePort (ex.
		// 30139).
		ingress_https_node_port?: number

		// NodePort for konnectivity server service running as a sidecar
		// in each
		// kube-apiserver pod (ex. 30564).
		konnectivity_server_node_port?: number
	})

	_#defs: "/$defs/load_balancer/$defs/metal_lb_config": close({
		address_pools!: matchN(1, [_#defs."/$defs/load_balancer/$defs/metal_lb_config/$defs/address_pools", [_, ...] & [..._#defs."/$defs/load_balancer/$defs/metal_lb_config/$defs/address_pools"]])
	})

	_#defs: "/$defs/load_balancer/$defs/metal_lb_config/$defs/address_pools": close({
		// The addresses that are part of this pool. Each address
		// must be either in the CIDR form (1.2.3.0/24) or range
		// form (1.2.3.1-1.2.3.5).
		addresses!: [...string]

		// If true, avoid using IPs ending in .0 or .255.
		// This avoids buggy consumer devices mistakenly dropping IPv4
		// traffic for
		// those special IP addresses.
		avoid_buggy_ips?: bool

		// If true, prevent IP addresses from being automatically
		// assigned.
		manual_assign?: bool

		// The name of the address pool.
		pool!: string
	})

	_#defs: "/$defs/load_balancer/$defs/vip_config": close({
		// The VIP which you previously set aside for the Kubernetes API
		// of this cluster.
		control_plane_vip?: string

		// The VIP which you previously set aside for ingress traffic into
		// this cluster.
		ingress_vip?: string
	})

	_#defs: "/$defs/network_config/$defs/control_plane_v2_config": close({
		control_plane_ip_block?: matchN(1, [_#defs."/$defs/network_config/$defs/control_plane_v2_config/$defs/control_plane_ip_block", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/control_plane_v2_config/$defs/control_plane_ip_block"]])
	})

	_#defs: "/$defs/network_config/$defs/control_plane_v2_config/$defs/control_plane_ip_block": close({
		ips?: matchN(1, [_#defs."/$defs/network_config/$defs/control_plane_v2_config/$defs/control_plane_ip_block/$defs/ips", [..._#defs."/$defs/network_config/$defs/control_plane_v2_config/$defs/control_plane_ip_block/$defs/ips"]])

		// The network gateway used by the VMware User Cluster.
		gateway?: string

		// The netmask used by the VMware User Cluster.
		netmask?: string
	})

	_#defs: "/$defs/network_config/$defs/control_plane_v2_config/$defs/control_plane_ip_block/$defs/ips": close({
		// Hostname of the machine. VM's name will be used if this field
		// is empty.
		hostname?: string

		// IP could be an IP address (like 1.2.3.4) or a CIDR (like
		// 1.2.3.0/24).
		ip?: string
	})

	_#defs: "/$defs/network_config/$defs/dhcp_ip_config": close({
		// enabled is a flag to mark if DHCP IP allocation is
		// used for VMware user clusters.
		enabled!: bool
	})

	_#defs: "/$defs/network_config/$defs/host_config": close({
		// DNS search domains.
		dns_search_domains?: [...string]

		// DNS servers.
		dns_servers?: [...string]

		// NTP servers.
		ntp_servers?: [...string]
	})

	_#defs: "/$defs/network_config/$defs/static_ip_config": close({
		ip_blocks!: matchN(1, [_#defs."/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks", [_, ...] & [..._#defs."/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks"]])
	})

	_#defs: "/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks": close({
		ips!: matchN(1, [_#defs."/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks/$defs/ips", [_, ...] & [..._#defs."/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks/$defs/ips"]])

		// The network gateway used by the VMware User Cluster.
		gateway!: string

		// The netmask used by the VMware User Cluster.
		netmask!: string
	})

	_#defs: "/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks/$defs/ips": close({
		// Hostname of the machine. VM's name will be used if this field
		// is empty.
		hostname?: string

		// IP could be an IP address (like 1.2.3.4) or a CIDR (like
		// 1.2.3.0/24).
		ip!: string
	})
}
