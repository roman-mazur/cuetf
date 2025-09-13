package res

import "list"

#google_container_attached_cluster: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_container_attached_cluster")
	close({
		// Optional. Annotations on the cluster. This field has the same
		// restrictions as Kubernetes annotations. The total size of all
		// keys and
		// values combined is limited to 256k. Key can have 2 segments:
		// prefix (optional)
		// and name (required), separated by a slash (/). Prefix must be a
		// DNS subdomain.
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
		authorization?: matchN(1, [#authorization, list.MaxItems(1) & [...#authorization]])

		// Output only. The region where this cluster runs.
		//
		// For EKS clusters, this is an AWS region. For AKS clusters,
		// this is an Azure region.
		cluster_region?: string

		// Output only. The time at which this cluster was created.
		create_time?: string

		// Policy to determine what flags to send on delete. Possible
		// values: DELETE, DELETE_IGNORE_ERRORS
		deletion_policy?: string

		// A human readable description of this attached cluster. Cannot
		// be longer
		// than 255 UTF-8 encoded bytes.
		description?: string

		// The Kubernetes distribution of the underlying attached cluster.
		// Supported values:
		// "eks", "aks", "generic". The generic distribution provides the
		// ability to register
		// or migrate any CNCF conformant cluster.
		distribution!: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// A set of errors found in the cluster.
		errors?: [...close({
			message?: string
		})]
		id?: string

		// The Kubernetes version of the cluster.
		kubernetes_version?: string

		// The location for the resource
		location!: string

		// The name of this resource.
		name!: string
		binary_authorization?: matchN(1, [#binary_authorization, list.MaxItems(1) & [...#binary_authorization]])
		fleet?: matchN(1, [#fleet, list.MaxItems(1) & [_, ...] & [...#fleet]])
		logging_config?: matchN(1, [#logging_config, list.MaxItems(1) & [...#logging_config]])
		monitoring_config?: matchN(1, [#monitoring_config, list.MaxItems(1) & [...#monitoring_config]])
		oidc_config?: matchN(1, [#oidc_config, list.MaxItems(1) & [_, ...] & [...#oidc_config]])
		proxy_config?: matchN(1, [#proxy_config, list.MaxItems(1) & [...#proxy_config]])
		security_posture_config?: matchN(1, [#security_posture_config, list.MaxItems(1) & [...#security_posture_config]])
		timeouts?: #timeouts

		// The platform version for the cluster (e.g. '1.23.0-gke.1').
		platform_version!: string
		project?:          string

		// If set, there are currently changes in flight to the cluster.
		reconciling?: bool

		// The current state of the cluster. Possible values:
		// STATE_UNSPECIFIED, PROVISIONING, RUNNING, RECONCILING,
		// STOPPING, ERROR,
		// DEGRADED
		state?: string

		// A globally unique identifier for the cluster.
		uid?: string

		// The time at which this cluster was last updated.
		update_time?: string

		// Workload Identity settings.
		workload_identity_config?: [...close({
			identity_provider?: string
			issuer_uri?:        string
			workload_pool?:     string
		})]
	})

	#authorization: close({
		// Groups that can perform operations as a cluster admin. A
		// managed
		// ClusterRoleBinding will be created to grant the 'cluster-admin'
		// ClusterRole
		// to the groups. Up to ten admin groups can be provided.
		//
		// For more info on RBAC, see
		// https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
		admin_groups?: [...string]

		// Users that can perform operations as a cluster admin. A managed
		// ClusterRoleBinding will be created to grant the 'cluster-admin'
		// ClusterRole
		// to the users. Up to ten admin users can be provided.
		//
		// For more info on RBAC, see
		// https://kubernetes.io/docs/reference/access-authn-authz/rbac/#user-facing-roles
		admin_users?: [...string]
	})

	#binary_authorization: close({
		// Configure Binary Authorization evaluation mode. Possible
		// values: ["DISABLED", "PROJECT_SINGLETON_POLICY_ENFORCE"]
		evaluation_mode?: string
	})

	#fleet: close({
		// The name of the managed Hub Membership resource associated to
		// this
		// cluster. Membership names are formatted as
		// projects/<project-number>/locations/global/membership/<cluster-id>.
		membership?: string

		// The number of the Fleet host project where this cluster will be
		// registered.
		project!: string
	})

	#logging_config: close({
		component_config?: matchN(1, [_#defs."/$defs/logging_config/$defs/component_config", list.MaxItems(1) & [..._#defs."/$defs/logging_config/$defs/component_config"]])
	})

	#monitoring_config: close({
		managed_prometheus_config?: matchN(1, [_#defs."/$defs/monitoring_config/$defs/managed_prometheus_config", list.MaxItems(1) & [..._#defs."/$defs/monitoring_config/$defs/managed_prometheus_config"]])
	})

	#oidc_config: close({
		// A JSON Web Token (JWT) issuer URI. 'issuer' must start with
		// 'https://'
		issuer_url!: string

		// OIDC verification keys in JWKS format (RFC 7517).
		jwks?: string
	})

	#proxy_config: close({
		kubernetes_secret?: matchN(1, [_#defs."/$defs/proxy_config/$defs/kubernetes_secret", list.MaxItems(1) & [..._#defs."/$defs/proxy_config/$defs/kubernetes_secret"]])
	})

	#security_posture_config: close({
		// Sets the mode of the Kubernetes security posture API's workload
		// vulnerability scanning. Possible values:
		// ["VULNERABILITY_DISABLED", "VULNERABILITY_ENTERPRISE"]
		vulnerability_mode!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/logging_config/$defs/component_config": close({
		// The components to be enabled. Possible values:
		// ["SYSTEM_COMPONENTS", "WORKLOADS"]
		enable_components?: [...string]
	})

	_#defs: "/$defs/monitoring_config/$defs/managed_prometheus_config": close({
		// Enable Managed Collection.
		enabled?: bool
	})

	_#defs: "/$defs/proxy_config/$defs/kubernetes_secret": close({
		// Name of the kubernetes secret containing the proxy config.
		name!: string

		// Namespace of the kubernetes secret containing the proxy config.
		namespace!: string
	})
}
