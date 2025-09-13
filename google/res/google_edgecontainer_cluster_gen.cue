package res

import "list"

#google_edgecontainer_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_edgecontainer_cluster")
	close({
		// The PEM-encoded public certificate of the cluster's CA.
		cluster_ca_certificate?: string

		// The control plane release version.
		control_plane_version?: string

		// The time the cluster was created, in RFC3339 text format.
		create_time?: string

		// The default maximum number of pods per node used if a maximum
		// value is not
		// specified explicitly for a node pool in this cluster. If
		// unspecified, the
		// Kubernetes default value will be used.
		default_max_pods_per_node?: number

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// The IP address of the Kubernetes API server.
		endpoint?: string

		// Address pools for cluster data plane external load balancing.
		external_load_balancer_ipv4_address_pools?: [...string]

		// User-defined labels for the edgecloud cluster.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The location of the resource.
		location!: string
		id?:       string

		// All the maintenance events scheduled for the cluster, including
		// the ones
		// ongoing, planned for the future and done in the past (up to 90
		// days).
		maintenance_events?: [...close({
			create_time?:    string
			end_time?:       string
			operation?:      string
			schedule?:       string
			start_time?:     string
			state?:          string
			target_version?: string
			type?:           string
			update_time?:    string
			uuid?:           string
		})]

		// The GDCE cluster name.
		name!: string

		// The lowest release version among all worker nodes. This field
		// can be empty
		// if the cluster does not have any worker nodes.
		node_version?: string
		authorization?: matchN(1, [#authorization, list.MaxItems(1) & [_, ...] & [...#authorization]])
		control_plane?: matchN(1, [#control_plane, list.MaxItems(1) & [...#control_plane]])
		control_plane_encryption?: matchN(1, [#control_plane_encryption, list.MaxItems(1) & [...#control_plane_encryption]])
		fleet?: matchN(1, [#fleet, list.MaxItems(1) & [_, ...] & [...#fleet]])
		maintenance_policy?: matchN(1, [#maintenance_policy, list.MaxItems(1) & [...#maintenance_policy]])
		networking?: matchN(1, [#networking, list.MaxItems(1) & [_, ...] & [...#networking]])
		system_addons_config?: matchN(1, [#system_addons_config, list.MaxItems(1) & [...#system_addons_config]])
		timeouts?: #timeouts

		// The port number of the Kubernetes API server.
		port?: number

		// The release channel a cluster is subscribed to. Possible
		// values: ["RELEASE_CHANNEL_UNSPECIFIED", "NONE", "REGULAR"]
		release_channel?: string
		project?:         string

		// Indicates the status of the cluster.
		status?: string

		// The target cluster version. For example: "1.5.0".
		target_version?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// The time the cluster was last updated, in RFC3339 text format.
		update_time?: string
	})

	#authorization: close({
		admin_users?: matchN(1, [_#defs."/$defs/authorization/$defs/admin_users", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/authorization/$defs/admin_users"]])
	})

	#control_plane: close({
		local?: matchN(1, [_#defs."/$defs/control_plane/$defs/local", list.MaxItems(1) & [..._#defs."/$defs/control_plane/$defs/local"]])
		remote?: matchN(1, [_#defs."/$defs/control_plane/$defs/remote", list.MaxItems(1) & [..._#defs."/$defs/control_plane/$defs/remote"]])
	})

	#control_plane_encryption: close({
		// The Cloud KMS CryptoKey e.g.
		// projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{cryptoKey}
		// to use for protecting control plane disks. If not specified, a
		// Google-managed key will be used instead.
		kms_key?: string

		// The Cloud KMS CryptoKeyVersion currently in use for protecting
		// control
		// plane disks. Only applicable if kms_key is set.
		kms_key_active_version?: string

		// Availability of the Cloud KMS CryptoKey. If not
		// 'KEY_AVAILABLE', then
		// nodes may go offline as they cannot access their local data.
		// This can be
		// caused by a lack of permissions to use the key, or if the key
		// is disabled
		// or deleted.
		kms_key_state?: string

		// Error status returned by Cloud KMS when using this key. This
		// field may be
		// populated only if 'kms_key_state' is not
		// 'KMS_KEY_STATE_KEY_AVAILABLE'.
		// If populated, this field contains the error status reported by
		// Cloud KMS.
		kms_status?: [...close({
			code?:    number
			message?: string
		})]
	})

	#fleet: close({
		// The name of the managed Hub Membership resource associated to
		// this cluster.
		// Membership names are formatted as
		// 'projects/<project-number>/locations/global/membership/<cluster-id>'.
		membership?: string

		// The name of the Fleet host project where this cluster will be
		// registered.
		// Project names are formatted as
		// 'projects/<project-number>'.
		project!: string
	})

	#maintenance_policy: close({
		maintenance_exclusions?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusions", [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusions"]])
		window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/window", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/window"]])
	})

	#networking: close({
		// All pods in the cluster are assigned an RFC1918 IPv4 address
		// from these
		// blocks. Only a single block is supported. This field cannot be
		// changed
		// after creation.
		cluster_ipv4_cidr_blocks!: [...string]

		// If specified, dual stack mode is enabled and all pods in the
		// cluster are
		// assigned an IPv6 address from these blocks alongside from an
		// IPv4
		// address. Only a single block is supported. This field cannot be
		// changed
		// after creation.
		cluster_ipv6_cidr_blocks?: [...string]

		// IP addressing type of this cluster i.e. SINGLESTACK_V4 vs
		// DUALSTACK_V4_V6.
		network_type?: string

		// All services in the cluster are assigned an RFC1918 IPv4
		// address from these
		// blocks. Only a single block is supported. This field cannot be
		// changed
		// after creation.
		services_ipv4_cidr_blocks!: [...string]

		// If specified, dual stack mode is enabled and all services in
		// the cluster are
		// assigned an IPv6 address from these blocks alongside from an
		// IPv4
		// address. Only a single block is supported. This field cannot be
		// changed
		// after creation.
		services_ipv6_cidr_blocks?: [...string]
	})

	#system_addons_config: close({
		ingress?: matchN(1, [_#defs."/$defs/system_addons_config/$defs/ingress", list.MaxItems(1) & [..._#defs."/$defs/system_addons_config/$defs/ingress"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/authorization/$defs/admin_users": close({
		// An active Google username.
		username!: string
	})

	_#defs: "/$defs/control_plane/$defs/local": close({
		// Only machines matching this filter will be allowed to host
		// control
		// plane nodes. The filtering language accepts strings like
		// "name=<name>",
		// and is documented here: [AIP-160](https://google.aip.dev/160).
		machine_filter?: string

		// The number of nodes to serve as replicas of the Control Plane.
		// Only 1 and 3 are supported.
		node_count?: number

		// Name of the Google Distributed Cloud Edge zones where this node
		// pool
		// will be created. For example: 'us-central1-edge-customer-a'.
		node_location?: string

		// Policy configuration about how user applications are deployed.
		// Possible values: ["SHARED_DEPLOYMENT_POLICY_UNSPECIFIED",
		// "ALLOWED", "DISALLOWED"]
		shared_deployment_policy?: string
	})

	_#defs: "/$defs/control_plane/$defs/remote": close({
		// Name of the Google Distributed Cloud Edge zones where this node
		// pool
		// will be created. For example: 'us-central1-edge-customer-a'.
		node_location?: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusions": close({
		window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/maintenance_exclusions/$defs/window", list.MaxItems(1) & [..._#defs."/$defs/maintenance_policy/$defs/maintenance_exclusions/$defs/window"]])

		// A unique (per cluster) id for the window.
		id?: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/maintenance_exclusions/$defs/window": close({
		// The time that the window ends. The end time must take place
		// after the
		// start time.
		end_time?: string

		// The time that the window first starts.
		start_time?: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/window": close({
		recurring_window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/window/$defs/recurring_window", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/maintenance_policy/$defs/window/$defs/recurring_window"]])
	})

	_#defs: "/$defs/maintenance_policy/$defs/window/$defs/recurring_window": close({
		window?: matchN(1, [_#defs."/$defs/maintenance_policy/$defs/window/$defs/recurring_window/$defs/window", list.MaxItems(1) & [..._#defs."/$defs/maintenance_policy/$defs/window/$defs/recurring_window/$defs/window"]])

		// An RRULE (https://tools.ietf.org/html/rfc5545#section-3.8.5.3)
		// for how
		// this window recurs. They go on for the span of time between the
		// start and
		// end time.
		recurrence?: string
	})

	_#defs: "/$defs/maintenance_policy/$defs/window/$defs/recurring_window/$defs/window": close({
		// The time that the window ends. The end time must take place
		// after the
		// start time.
		end_time?: string

		// The time that the window first starts.
		start_time?: string
	})

	_#defs: "/$defs/system_addons_config/$defs/ingress": close({
		// Whether Ingress is disabled.
		disabled?: bool

		// Ingress VIP.
		ipv4_vip?: string
	})
}
