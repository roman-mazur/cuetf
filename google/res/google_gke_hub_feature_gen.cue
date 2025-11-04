package res

import "list"

#google_gke_hub_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gke_hub_feature")
	close({
		// Output only. When the Feature resource was created.
		create_time?: string

		// Output only. When the Feature resource was deleted.
		delete_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// GCP labels for this Feature.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// The location for the resource
		location!: string

		// The full, unique name of this Feature resource
		name?:    string
		project?: string

		// State of the Feature resource itself.
		resource_state?: [...close({
			has_resources?: bool
			state?:         string
		})]
		fleet_default_member_config?: matchN(1, [#fleet_default_member_config, list.MaxItems(1) & [...#fleet_default_member_config]])
		spec?: matchN(1, [#spec, list.MaxItems(1) & [...#spec]])
		timeouts?: #timeouts

		// Output only. The Hub-wide Feature state
		state?: [...close({
			state?: [...close({
				code?:        string
				description?: string
				update_time?: string
			})]
		})]

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Output only. When the Feature resource was last updated.
		update_time?: string
	})

	#fleet_default_member_config: close({
		configmanagement?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/configmanagement", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/configmanagement"]])
		mesh?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/mesh", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/mesh"]])
		policycontroller?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller"]])
	})

	#spec: close({
		clusterupgrade?: matchN(1, [_#defs."/$defs/spec/$defs/clusterupgrade", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/clusterupgrade"]])
		fleetobservability?: matchN(1, [_#defs."/$defs/spec/$defs/fleetobservability", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/fleetobservability"]])
		multiclusteringress?: matchN(1, [_#defs."/$defs/spec/$defs/multiclusteringress", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/multiclusteringress"]])
		rbacrolebindingactuation?: matchN(1, [_#defs."/$defs/spec/$defs/rbacrolebindingactuation", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/rbacrolebindingactuation"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/configmanagement": close({
		config_sync?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/configmanagement/$defs/config_sync", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/configmanagement/$defs/config_sync"]])

		// Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync
		// auto-upgrades, and set this field to MANAGEMENT_MANUAL or
		// MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades.
		// Possible values: ["MANAGEMENT_UNSPECIFIED",
		// "MANAGEMENT_AUTOMATIC", "MANAGEMENT_MANUAL"]
		management?: string

		// Version of Config Sync installed
		version?: string
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/configmanagement/$defs/config_sync": close({
		// Enables the installation of ConfigSync. If set to true,
		// ConfigSync resources will be created and the other ConfigSync
		// fields will be applied if exist. If set to false, all other
		// ConfigSync fields will be ignored, ConfigSync resources will
		// be deleted. If omitted, ConfigSync resources will be managed
		// depends on the presence of the git or oci field.
		enabled?: bool

		// The Email of the Google Cloud Service Account (GSA) used for
		// exporting Config Sync metrics to Cloud Monitoring. The GSA
		// should have the Monitoring Metric
		// Writer(roles/monitoring.metricWriter) IAM role. The Kubernetes
		// ServiceAccount 'default' in the namespace
		// 'config-management-monitoring' should be bound to the GSA.
		metrics_gcp_service_account_email?: string

		// Set to true to enable the Config Sync admission webhook to
		// prevent drifts. If set to 'false', disables the Config Sync
		// admission webhook and does not prevent drifts.
		prevent_drift?: bool

		// Specifies whether the Config Sync Repo is in hierarchical or
		// unstructured mode
		source_format?: string
		git?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/configmanagement/$defs/config_sync/$defs/git", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/configmanagement/$defs/config_sync/$defs/git"]])
		oci?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/configmanagement/$defs/config_sync/$defs/oci", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/configmanagement/$defs/config_sync/$defs/oci"]])
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/configmanagement/$defs/config_sync/$defs/git": close({
		// The Google Cloud Service Account Email used for auth when
		// secretType is gcpServiceAccount
		gcp_service_account_email?: string

		// URL for the HTTPS Proxy to be used when communicating with the
		// Git repo
		https_proxy?: string

		// The path within the Git repository that represents the top
		// level of the repo to sync
		policy_dir?: string

		// Type of secret configured for access to the Git repo
		secret_type!: string

		// The branch of the repository to sync from. Default: master
		sync_branch?: string

		// The URL of the Git repository to use as the source of truth
		sync_repo?: string

		// Git revision (tag or hash) to check out. Default HEAD
		sync_rev?: string

		// Period in seconds between consecutive syncs. Default: 15
		sync_wait_secs?: string
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/configmanagement/$defs/config_sync/$defs/oci": close({
		// The Google Cloud Service Account Email used for auth when
		// secretType is gcpServiceAccount
		gcp_service_account_email?: string

		// The absolute path of the directory that contains the local
		// resources. Default: the root directory of the image
		policy_dir?: string

		// Type of secret configured for access to the Git repo
		secret_type!: string

		// The OCI image repository URL for the package to sync from
		sync_repo?: string

		// Period in seconds between consecutive syncs. Default: 15
		sync_wait_secs?: string
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/mesh": close({
		// Whether to automatically manage Service Mesh Possible values:
		// ["MANAGEMENT_UNSPECIFIED", "MANAGEMENT_AUTOMATIC",
		// "MANAGEMENT_MANUAL"]
		management!: string
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller": close({
		policy_controller_hub_config!: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config"]])

		// Configures the version of Policy Controller
		version?: string
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config": close({
		// Interval for Policy Controller Audit scans (in seconds). When
		// set to 0, this disables audit functionality altogether.
		audit_interval_seconds?: number

		// The maximum number of audit violations to be stored in a
		// constraint. If not set, the internal default of 20 will be
		// used.
		constraint_violation_limit?: number

		// The set of namespaces that are excluded from Policy Controller
		// checks. Namespaces do not need to currently exist on the
		// cluster.
		exemptable_namespaces?: [...string]

		// Configures the mode of the Policy Controller installation
		// Possible values: ["INSTALL_SPEC_UNSPECIFIED",
		// "INSTALL_SPEC_NOT_INSTALLED", "INSTALL_SPEC_ENABLED",
		// "INSTALL_SPEC_SUSPENDED", "INSTALL_SPEC_DETACHED"]
		install_spec!: string

		// Logs all denies and dry run failures.
		log_denies_enabled?: bool
		deployment_configs?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs", [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs"]])
		monitoring?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/monitoring", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/monitoring"]])

		// Enables the ability to mutate resources using Policy
		// Controller.
		mutation_enabled?: bool
		policy_content?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content"]])

		// Enables the ability to use Constraint Templates that reference
		// to objects other than the object currently being evaluated.
		referential_rules_enabled?: bool
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs": close({
		component!: string
		container_resources?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources"]])
		pod_toleration?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/pod_toleration", [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/pod_toleration"]])

		// Pod affinity configuration. Possible values:
		// ["AFFINITY_UNSPECIFIED", "NO_AFFINITY", "ANTI_AFFINITY"]
		pod_affinity?: string

		// Pod replica count.
		replica_count?: number
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources": close({
		limits?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/limits", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/limits"]])
		requests?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/requests", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/requests"]])
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/limits": close({
		// CPU requirement expressed in Kubernetes resource units.
		cpu?: string

		// Memory requirement expressed in Kubernetes resource units.
		memory?: string
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/requests": close({
		// CPU requirement expressed in Kubernetes resource units.
		cpu?: string

		// Memory requirement expressed in Kubernetes resource units.
		memory?: string
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/pod_toleration": close({
		// Matches a taint effect.
		effect?: string

		// Matches a taint key (not necessarily unique).
		key?: string

		// Matches a taint operator.
		operator?: string

		// Matches a taint value.
		value?: string
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/monitoring": close({
		// Specifies the list of backends Policy Controller will export
		// to. An empty list would effectively disable metrics export.
		// Possible values: ["MONITORING_BACKEND_UNSPECIFIED",
		// "PROMETHEUS", "CLOUD_MONITORING"]
		backends?: [...string]
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content": close({
		bundles?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/bundles", [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/bundles"]])
		template_library?: matchN(1, [_#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/template_library", list.MaxItems(1) & [..._#defs."/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/template_library"]])
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/bundles": close({
		bundle!: string

		// The set of namespaces to be exempted from the bundle.
		exempted_namespaces?: [...string]
	})

	_#defs: "/$defs/fleet_default_member_config/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/template_library": close({
		// Configures the manner in which the template library is
		// installed on the cluster. Possible values:
		// ["INSTALLATION_UNSPECIFIED", "NOT_INSTALLED", "ALL"]
		installation?: string
	})

	_#defs: "/$defs/spec/$defs/clusterupgrade": close({
		gke_upgrade_overrides?: matchN(1, [_#defs."/$defs/spec/$defs/clusterupgrade/$defs/gke_upgrade_overrides", [..._#defs."/$defs/spec/$defs/clusterupgrade/$defs/gke_upgrade_overrides"]])
		post_conditions?: matchN(1, [_#defs."/$defs/spec/$defs/clusterupgrade/$defs/post_conditions", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/clusterupgrade/$defs/post_conditions"]])

		// Specified if other fleet should be considered as a source of
		// upgrades. Currently, at most one upstream fleet is allowed.
		// The fleet name should be either fleet project number or id.
		upstream_fleets!: [...string]
	})

	_#defs: "/$defs/spec/$defs/clusterupgrade/$defs/gke_upgrade_overrides": close({
		post_conditions!: matchN(1, [_#defs."/$defs/spec/$defs/clusterupgrade/$defs/gke_upgrade_overrides/$defs/post_conditions", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/clusterupgrade/$defs/gke_upgrade_overrides/$defs/post_conditions"]])
		upgrade!: matchN(1, [_#defs."/$defs/spec/$defs/clusterupgrade/$defs/gke_upgrade_overrides/$defs/upgrade", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/spec/$defs/clusterupgrade/$defs/gke_upgrade_overrides/$defs/upgrade"]])
	})

	_#defs: "/$defs/spec/$defs/clusterupgrade/$defs/gke_upgrade_overrides/$defs/post_conditions": close({
		// Amount of time to "soak" after a rollout has been finished
		// before marking it COMPLETE. Cannot exceed 30 days.
		soaking!: string
	})

	_#defs: "/$defs/spec/$defs/clusterupgrade/$defs/gke_upgrade_overrides/$defs/upgrade": close({
		// Name of the upgrade, e.g., "k8s_control_plane". It should be a
		// valid upgrade name. It must not exceet 99 characters.
		name!: string

		// Version of the upgrade, e.g., "1.22.1-gke.100". It should be a
		// valid version. It must not exceet 99 characters.
		version!: string
	})

	_#defs: "/$defs/spec/$defs/clusterupgrade/$defs/post_conditions": close({
		// Amount of time to "soak" after a rollout has been finished
		// before marking it COMPLETE. Cannot exceed 30 days.
		soaking!: string
	})

	_#defs: "/$defs/spec/$defs/fleetobservability": close({
		logging_config?: matchN(1, [_#defs."/$defs/spec/$defs/fleetobservability/$defs/logging_config", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/fleetobservability/$defs/logging_config"]])
	})

	_#defs: "/$defs/spec/$defs/fleetobservability/$defs/logging_config": close({
		default_config?: matchN(1, [_#defs."/$defs/spec/$defs/fleetobservability/$defs/logging_config/$defs/default_config", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/fleetobservability/$defs/logging_config/$defs/default_config"]])
		fleet_scope_logs_config?: matchN(1, [_#defs."/$defs/spec/$defs/fleetobservability/$defs/logging_config/$defs/fleet_scope_logs_config", list.MaxItems(1) & [..._#defs."/$defs/spec/$defs/fleetobservability/$defs/logging_config/$defs/fleet_scope_logs_config"]])
	})

	_#defs: "/$defs/spec/$defs/fleetobservability/$defs/logging_config/$defs/default_config": close({
		// Specified if fleet logging feature is enabled. Possible values:
		// ["MODE_UNSPECIFIED", "COPY", "MOVE"]
		mode?: string
	})

	_#defs: "/$defs/spec/$defs/fleetobservability/$defs/logging_config/$defs/fleet_scope_logs_config": close({
		// Specified if fleet logging feature is enabled. Possible values:
		// ["MODE_UNSPECIFIED", "COPY", "MOVE"]
		mode?: string
	})

	_#defs: "/$defs/spec/$defs/multiclusteringress": close({
		// Fully-qualified Membership name which hosts the
		// MultiClusterIngress CRD. Example:
		// 'projects/foo-proj/locations/global/memberships/bar'
		config_membership!: string
	})

	_#defs: "/$defs/spec/$defs/rbacrolebindingactuation": close({
		// The list of allowed custom roles (ClusterRoles). If a custom
		// role is not part of this list, it cannot be used in a fleet
		// scope RBACRoleBinding. If a custom role in this list is in
		// use, it cannot be removed from the list until the scope
		// RBACRolebindings using it are deleted.
		allowed_custom_roles?: [...string]
	})
}
