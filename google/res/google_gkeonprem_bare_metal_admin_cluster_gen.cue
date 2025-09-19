package res

import "list"

#google_gkeonprem_bare_metal_admin_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gkeonprem_bare_metal_admin_cluster")
	close({
		// Annotations on the Bare Metal Admin Cluster.
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

		// A human readable description of this Bare Metal Admin Cluster.
		bare_metal_version?: string

		// The time the cluster was created, in RFC3339 text format.
		create_time?: string

		// The time the cluster was deleted, in RFC3339 text format.
		delete_time?: string

		// A human readable description of this Bare Metal Admin Cluster.
		description?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// The IP address name of Bare Metal Admin Cluster's API server.
		endpoint?: string

		// This checksum is computed by the server based on the value of
		// other
		// fields, and may be sent on update and delete requests to ensure
		// the
		// client has an up-to-date value before proceeding.
		// Allows clients to perform consistent read-modify-writes
		// through optimistic concurrency control.
		etag?: string

		// Fleet related configuration.
		// Fleets are a Google Cloud concept for logically organizing
		// clusters,
		// letting you use and manage multi-cluster capabilities and apply
		// consistent policies across your systems.
		// See [Anthos
		// Fleets](https://cloud.google.com/anthos/multicluster-management/fleets)
		// for
		// more details on Anthos multi-cluster capabilities using Fleets.
		fleet?: [...close({
			membership?: string
		})]
		id?: string

		// The object name of the Bare Metal Admin Cluster custom resource
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
		// All users should use this name to access their cluster using
		// gkectl or
		// kubectl and should expect to see the local name when viewing
		// admin
		// cluster controller logs.
		local_name?: string

		// The location of the resource.
		location!: string

		// The bare metal admin cluster name.
		name!: string
		cluster_operations?: matchN(1, [#cluster_operations, list.MaxItems(1) & [...#cluster_operations]])
		control_plane?: matchN(1, [#control_plane, list.MaxItems(1) & [...#control_plane]])
		project?: string
		load_balancer?: matchN(1, [#load_balancer, list.MaxItems(1) & [...#load_balancer]])
		maintenance_config?: matchN(1, [#maintenance_config, list.MaxItems(1) & [...#maintenance_config]])
		network_config?: matchN(1, [#network_config, list.MaxItems(1) & [...#network_config]])
		node_access_config?: matchN(1, [#node_access_config, list.MaxItems(1) & [...#node_access_config]])
		node_config?: matchN(1, [#node_config, list.MaxItems(1) & [...#node_config]])
		proxy?: matchN(1, [#proxy, list.MaxItems(1) & [...#proxy]])
		security_config?: matchN(1, [#security_config, list.MaxItems(1) & [...#security_config]])
		storage?: matchN(1, [#storage, list.MaxItems(1) & [...#storage]])
		timeouts?: #timeouts

		// If set, there are currently changes in flight to the Bare Metal
		// Admin Cluster.
		reconciling?: bool

		// The current state of this cluster.
		state?: string

		// Specifies detailed cluster status.
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

		// The unique identifier of the Bare Metal Admin Cluster.
		uid?: string

		// The time the cluster was last updated, in RFC3339 text format.
		update_time?: string

		// Specifies the security related settings for the Bare Metal
		// Admin Cluster.
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
	})

	#cluster_operations: close({
		// Whether collection of application logs/metrics should be
		// enabled (in addition to system logs/metrics).
		enable_application_logs?: bool
	})

	#control_plane: close({
		api_server_args?: matchN(1, [_#defs."/$defs/control_plane/$defs/api_server_args", [..._#defs."/$defs/control_plane/$defs/api_server_args"]])
		control_plane_node_pool_config?: matchN(1, [_#defs."/$defs/control_plane/$defs/control_plane_node_pool_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/control_plane/$defs/control_plane_node_pool_config"]])
	})

	#load_balancer: close({
		manual_lb_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/manual_lb_config", list.MaxItems(1) & [..._#defs."/$defs/load_balancer/$defs/manual_lb_config"]])
		port_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/port_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/load_balancer/$defs/port_config"]])
		vip_config?: matchN(1, [_#defs."/$defs/load_balancer/$defs/vip_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/load_balancer/$defs/vip_config"]])
	})

	#maintenance_config: close({
		// All IPv4 address from these ranges will be placed into
		// maintenance mode.
		// Nodes in maintenance mode will be cordoned and drained. When
		// both of these
		// are true, the "baremetal.cluster.gke.io/maintenance" annotation
		// will be set
		// on the node resource.
		maintenance_address_cidr_blocks!: [...string]
	})

	#network_config: close({
		island_mode_cidr?: matchN(1, [_#defs."/$defs/network_config/$defs/island_mode_cidr", list.MaxItems(1) & [..._#defs."/$defs/network_config/$defs/island_mode_cidr"]])
	})

	#node_access_config: close({
		// LoginUser is the user name used to access node machines.
		// It defaults to "root" if not set.
		login_user?: string
	})

	#node_config: close({
		// The maximum number of pods a node can run. The size of the CIDR
		// range
		// assigned to the node will be derived from this parameter.
		max_pods_per_node?: number
	})

	#proxy: close({
		// A list of IPs, hostnames, and domains that should skip the
		// proxy.
		// For example: ["127.0.0.1", "example.com", ".corp",
		// "localhost"].
		no_proxy?: [...string]

		// Specifies the address of your proxy server.
		// For Example: http://domain
		// WARNING: Do not provide credentials in the format
		// of http://(username:password@)domain these will be rejected by
		// the server.
		uri!: string
	})

	#security_config: close({
		authorization?: matchN(1, [_#defs."/$defs/security_config/$defs/authorization", list.MaxItems(1) & [..._#defs."/$defs/security_config/$defs/authorization"]])
	})

	#storage: close({
		lvp_node_mounts_config?: matchN(1, [_#defs."/$defs/storage/$defs/lvp_node_mounts_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage/$defs/lvp_node_mounts_config"]])
		lvp_share_config?: matchN(1, [_#defs."/$defs/storage/$defs/lvp_share_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage/$defs/lvp_share_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/control_plane/$defs/api_server_args": close({
		// The argument name as it appears on the API Server command line
		// please make sure to remove the leading dashes.
		argument!: string

		// The value of the arg as it will be passed to the API Server
		// command line.
		value!: string
	})

	_#defs: "/$defs/control_plane/$defs/control_plane_node_pool_config": close({
		node_pool_config?: matchN(1, [_#defs."/$defs/control_plane/$defs/control_plane_node_pool_config/$defs/node_pool_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/control_plane/$defs/control_plane_node_pool_config/$defs/node_pool_config"]])
	})

	_#defs: "/$defs/control_plane/$defs/control_plane_node_pool_config/$defs/node_pool_config": close({
		node_configs?: matchN(1, [_#defs."/$defs/control_plane/$defs/control_plane_node_pool_config/$defs/node_pool_config/$defs/node_configs", [..._#defs."/$defs/control_plane/$defs/control_plane_node_pool_config/$defs/node_pool_config/$defs/node_configs"]])
		taints?: matchN(1, [_#defs."/$defs/control_plane/$defs/control_plane_node_pool_config/$defs/node_pool_config/$defs/taints", [..._#defs."/$defs/control_plane/$defs/control_plane_node_pool_config/$defs/node_pool_config/$defs/taints"]])

		// The map of Kubernetes labels (key/value pairs) to be applied to
		// each node. These will added in addition to any default label(s)
		// that Kubernetes may apply to the node. In case of conflict in
		// label keys, the applied set may differ depending on the
		// Kubernetes
		// version -- it's best to assume the behavior is undefined and
		// conflicts should be avoided. For more information, including
		// usage
		// and the valid values, see:
		// - http://kubernetes.io/v1.1/docs/user-guide/labels.html
		// An object containing a list of "key": value pairs.
		// For example: { "name": "wrench", "mass": "1.3kg", "count": "3"
		// }.
		labels?: [string]: string

		// Specifies the nodes operating system (default: LINUX).
		operating_system?: string
	})

	_#defs: "/$defs/control_plane/$defs/control_plane_node_pool_config/$defs/node_pool_config/$defs/node_configs": close({
		// The map of Kubernetes labels (key/value pairs) to be applied to
		// each node. These will added in addition to any default label(s)
		// that Kubernetes may apply to the node. In case of conflict in
		// label keys, the applied set may differ depending on the
		// Kubernetes
		// version -- it's best to assume the behavior is undefined and
		// conflicts should be avoided. For more information, including
		// usage
		// and the valid values, see:
		// - http://kubernetes.io/v1.1/docs/user-guide/labels.html
		// An object containing a list of "key": value pairs.
		// For example: { "name": "wrench", "mass": "1.3kg", "count": "3"
		// }.
		labels?: [string]: string

		// The default IPv4 address for SSH access and Kubernetes node.
		// Example: 192.168.0.1
		node_ip?: string
	})

	_#defs: "/$defs/control_plane/$defs/control_plane_node_pool_config/$defs/node_pool_config/$defs/taints": close({
		// Specifies the nodes operating system (default: LINUX). Possible
		// values: ["EFFECT_UNSPECIFIED", "PREFER_NO_SCHEDULE",
		// "NO_EXECUTE"]
		effect?: string

		// Key associated with the effect.
		key?: string

		// Value associated with the effect.
		value?: string
	})

	_#defs: "/$defs/load_balancer/$defs/manual_lb_config": close({
		// Whether manual load balancing is enabled.
		enabled!: bool
	})

	_#defs: "/$defs/load_balancer/$defs/port_config": close({
		// The port that control plane hosted load balancers will listen
		// on.
		control_plane_load_balancer_port!: number
	})

	_#defs: "/$defs/load_balancer/$defs/vip_config": close({
		// The VIP which you previously set aside for the Kubernetes API
		// of this Bare Metal Admin Cluster.
		control_plane_vip!: string
	})

	_#defs: "/$defs/network_config/$defs/island_mode_cidr": close({
		// All pods in the cluster are assigned an RFC1918 IPv4 address
		// from these ranges. This field cannot be changed after
		// creation.
		pod_address_cidr_blocks!: [...string]

		// All services in the cluster are assigned an RFC1918 IPv4
		// address from these ranges. This field cannot be changed after
		// creation.
		service_address_cidr_blocks!: [...string]
	})

	_#defs: "/$defs/security_config/$defs/authorization": close({
		admin_users?: matchN(1, [_#defs."/$defs/security_config/$defs/authorization/$defs/admin_users", [_, ...] & [..._#defs."/$defs/security_config/$defs/authorization/$defs/admin_users"]])
	})

	_#defs: "/$defs/security_config/$defs/authorization/$defs/admin_users": close({
		// The name of the user, e.g. 'my-gcp-id@gmail.com'.
		username!: string
	})

	_#defs: "/$defs/storage/$defs/lvp_node_mounts_config": close({
		// The host machine path.
		path!: string

		// The StorageClass name that PVs will be created with.
		storage_class!: string
	})

	_#defs: "/$defs/storage/$defs/lvp_share_config": close({
		lvp_config?: matchN(1, [_#defs."/$defs/storage/$defs/lvp_share_config/$defs/lvp_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/storage/$defs/lvp_share_config/$defs/lvp_config"]])

		// The number of subdirectories to create under path.
		shared_path_pv_count?: number
	})

	_#defs: "/$defs/storage/$defs/lvp_share_config/$defs/lvp_config": close({
		// The host machine path.
		path!: string

		// The StorageClass name that PVs will be created with.
		storage_class!: string
	})
}
