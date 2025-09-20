package res

import "list"

#google_gkeonprem_vmware_admin_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gkeonprem_vmware_admin_cluster")
	close({
		// Annotations on the VMware Admin Cluster.
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

		// The bootstrap cluster this VMware admin cluster belongs to.
		bootstrap_cluster_membership?: string

		// The time the cluster was created, in RFC3339 text format.
		create_time?: string

		// A human readable description of this VMware admin cluster.
		description?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// If set, the advanced cluster feature is enabled.
		enable_advanced_cluster?: bool

		// The DNS name of VMware admin cluster's API server.
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

		// The OS image type for the VMware admin cluster.
		image_type?: string

		// The object name of the VMwareAdminCluster custom resource on
		// the
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
		// All users should use this name to access their cluster using
		// gkectl or
		// kubectl and should expect to see the local name when viewing
		// admin
		// cluster controller logs.
		local_name?: string

		// The location of the resource.
		location!: string
		addon_node?: matchN(1, [#addon_node, list.MaxItems(1) & [...#addon_node]])
		anti_affinity_groups?: matchN(1, [#anti_affinity_groups, list.MaxItems(1) & [...#anti_affinity_groups]])
		authorization?: matchN(1, [#authorization, list.MaxItems(1) & [...#authorization]])
		auto_repair_config?: matchN(1, [#auto_repair_config, list.MaxItems(1) & [...#auto_repair_config]])
		control_plane_node?: matchN(1, [#control_plane_node, list.MaxItems(1) & [...#control_plane_node]])
		load_balancer?: matchN(1, [#load_balancer, list.MaxItems(1) & [...#load_balancer]])
		network_config?: matchN(1, [#network_config, list.MaxItems(1) & [_, ...] & [...#network_config]])
		platform_config?: matchN(1, [#platform_config, list.MaxItems(1) & [...#platform_config]])
		private_registry_config?: matchN(1, [#private_registry_config, list.MaxItems(1) & [...#private_registry_config]])
		proxy?: matchN(1, [#proxy, list.MaxItems(1) & [...#proxy]])
		timeouts?: #timeouts
		vcenter?: matchN(1, [#vcenter, list.MaxItems(1) & [...#vcenter]])

		// The VMware admin cluster resource name.
		name!: string

		// The Anthos clusters on the VMware version for the admin
		// cluster.
		on_prem_version?: string
		project?:         string

		// If set, there are currently changes in flight to the VMware
		// admin cluster.
		reconciling?: bool

		// The lifecycle state of the VMware admin cluster.
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

		// The unique identifier of the VMware Admin Cluster.
		uid?: string

		// The time the cluster was last updated, in RFC3339 text format.
		update_time?: string
	})

	#addon_node: close({
		auto_resize_config?: matchN(1, [_#defs."/$defs/addon_node/$defs/auto_resize_config", list.MaxItems(1) & [..._#defs."/$defs/addon_node/$defs/auto_resize_config"]])
	})

	#anti_affinity_groups: close({
		// Spread nodes across at least three physical hosts (requires at
		// least three
		// hosts).
		// Enabled by default.
		aag_config_disabled!: bool
	})

	#authorization: close({
		viewer_users?: matchN(1, [_#defs."/$defs/authorization/$defs/viewer_users", [..._#defs."/$defs/authorization/$defs/viewer_users"]])
	})

	#auto_repair_config: close({
		// Whether auto repair is enabled.
		enabled!: bool
	})

	#control_plane_node: close({
		// The number of vCPUs for the control-plane node of the admin
		// cluster.
		cpus?: number

		// The number of mebibytes of memory for the control-plane node of
		// the admin cluster.
		memory?: number

		// The number of control plane nodes for this VMware admin
		// cluster.
		replicas?: number
	})

	#load_balancer: close({
		f5_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/f5_config", list.MaxItems(1) & [..._#defs."/$defs/load_balancer/$defs/f5_config"]])
		manual_lb_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/manual_lb_config", list.MaxItems(1) & [..._#defs."/$defs/load_balancer/$defs/manual_lb_config"]])
		metal_lb_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/metal_lb_config", list.MaxItems(1) & [..._#defs."/$defs/load_balancer/$defs/metal_lb_config"]])
		vip_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/vip_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/load_balancer/$defs/vip_config"]])
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

		// vcenter_network specifies vCenter network name.
		vcenter_network?: string
		dhcp_ip_config?: matchN(1, [_#defs."/$defs/network_config/$defs/dhcp_ip_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/dhcp_ip_config"]])
		ha_control_plane_config?: matchN(1, [_#defs."/$defs/network_config/$defs/ha_control_plane_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/ha_control_plane_config"]])
		host_config?: matchN(1, [_#defs."/$defs/network_config/$defs/host_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/host_config"]])
		static_ip_config?: matchN(1, [_#defs."/$defs/network_config/$defs/static_ip_config", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/static_ip_config"]])
	})

	#platform_config: close({
		// The list of bundles installed in the admin cluster.
		bundles?: [...close({
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
			version?: string
		})]

		// The platform version e.g. 1.13.2.
		platform_version?: string

		// The required platform version e.g. 1.13.1.
		// If the current platform version is lower than the target
		// version,
		// the platform version will be updated to the target version.
		// If the target version is not installed in the platform
		// (bundle versions), download the target version bundle.
		required_platform_version?: string

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
	})

	#private_registry_config: close({
		// The registry address.
		address?: string

		// The CA certificate public key for private registry.
		ca_cert?: string
	})

	#proxy: close({
		// A comma-separated list of IP addresses, IP address ranges,
		// host names, and domain names that should not go through the
		// proxy server.
		no_proxy?: string

		// The proxy url.
		url!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	#vcenter: close({
		// The vCenter IP address.
		address?: string

		// Contains the vCenter CA certificate public key for SSL
		// verification.
		ca_cert_data?: string

		// The name of the vCenter cluster for the admin cluster.
		cluster?: string

		// The name of the virtual machine disk (VMDK) for the admin
		// cluster.
		data_disk?: string

		// The name of the vCenter datacenter for the admin cluster.
		datacenter?: string

		// The name of the vCenter datastore for the admin cluster.
		datastore?: string

		// The name of the vCenter folder for the admin cluster.
		folder?: string

		// The name of the vCenter resource pool for the admin cluster.
		resource_pool?: string

		// The name of the vCenter storage policy for the user cluster.
		storage_policy_name?: string
	})

	_#defs: "/$defs/addon_node/$defs/auto_resize_config": close({
		// Whether to enable controle plane node auto resizing.
		enabled!: bool
	})

	_#defs: "/$defs/authorization/$defs/viewer_users": close({
		// The name of the user, e.g. 'my-gcp-id@gmail.com'.
		username!: string
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
		// NodePort for add-ons server in the admin cluster.
		addons_node_port?: number

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
		// Metal LB is enabled.
		enabled?: bool
	})

	_#defs: "/$defs/load_balancer/$defs/vip_config": close({
		// The VIP to configure the load balancer for add-ons.
		addons_vip?: string

		// The VIP which you previously set aside for the Kubernetes
		// API of this VMware Admin Cluster.
		control_plane_vip!: string
	})

	_#defs: "/$defs/network_config/$defs/dhcp_ip_config": close({
		// enabled is a flag to mark if DHCP IP allocation is
		// used for VMware admin clusters.
		enabled!: bool
	})

	_#defs: "/$defs/network_config/$defs/ha_control_plane_config": close({
		control_plane_ip_block?: matchN(1, [_#defs."/$defs/network_config/$defs/ha_control_plane_config/$defs/control_plane_ip_block", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/ha_control_plane_config/$defs/control_plane_ip_block"]])
	})

	_#defs: "/$defs/network_config/$defs/ha_control_plane_config/$defs/control_plane_ip_block": close({
		ips?: matchN(1, [_#defs."/$defs/network_config/$defs/ha_control_plane_config/$defs/control_plane_ip_block/$defs/ips", [_, ...] & [..._#defs."/$defs/network_config/$defs/ha_control_plane_config/$defs/control_plane_ip_block/$defs/ips"]])

		// The network gateway used by the VMware Admin Cluster.
		gateway!: string

		// The netmask used by the VMware Admin Cluster.
		netmask!: string
	})

	_#defs: "/$defs/network_config/$defs/ha_control_plane_config/$defs/control_plane_ip_block/$defs/ips": close({
		// Hostname of the machine. VM's name will be used if this field
		// is empty.
		hostname?: string

		// IP could be an IP address (like 1.2.3.4) or a CIDR (like
		// 1.2.3.0/24).
		ip!: string
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
		ip_blocks?: matchN(1, [_#defs."/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks", [..._#defs."/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks"]])
	})

	_#defs: "/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks": close({
		ips?: matchN(1, [_#defs."/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks/$defs/ips", [_, ...] & [..._#defs."/$defs/network_config/$defs/static_ip_config/$defs/ip_blocks/$defs/ips"]])

		// The network gateway used by the VMware Admin Cluster.
		gateway!: string

		// The netmask used by the VMware Admin Cluster.
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
