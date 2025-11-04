package res

import "list"

#google_gke_hub_feature_membership: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gke_hub_feature_membership")
	close({
		// The name of the feature
		feature!: string
		configmanagement?: matchN(1, [#configmanagement, list.MaxItems(1) & [...#configmanagement]])
		id?: string

		// The location of the feature
		location!: string
		mesh?: matchN(1, [#mesh, list.MaxItems(1) & [...#mesh]])

		// The name of the membership
		membership!: string

		// The location of the membership
		membership_location?: string
		policycontroller?: matchN(1, [#policycontroller, list.MaxItems(1) & [...#policycontroller]])
		timeouts?: #timeouts

		// The project of the feature
		project?: string
	})

	#configmanagement: close({
		config_sync?: matchN(1, [_#defs."/$defs/configmanagement/$defs/config_sync", list.MaxItems(1) & [..._#defs."/$defs/configmanagement/$defs/config_sync"]])
		hierarchy_controller?: matchN(1, [_#defs."/$defs/configmanagement/$defs/hierarchy_controller", list.MaxItems(1) & [..._#defs."/$defs/configmanagement/$defs/hierarchy_controller"]])
		policy_controller?: matchN(1, [_#defs."/$defs/configmanagement/$defs/policy_controller", list.MaxItems(1) & [..._#defs."/$defs/configmanagement/$defs/policy_controller"]])

		// Set this field to MANAGEMENT_AUTOMATIC to enable Config Sync
		// auto-upgrades, and set this field to MANAGEMENT_MANUAL or
		// MANAGEMENT_UNSPECIFIED to disable Config Sync auto-upgrades.
		management?: string

		// Optional. Version of ACM to install. Defaults to the latest
		// version.
		version?: string
	})

	#mesh: close({
		// Whether to automatically manage Service Mesh. Possible values:
		// MANAGEMENT_UNSPECIFIED, MANAGEMENT_AUTOMATIC,
		// MANAGEMENT_MANUAL
		management?: string
	})

	#policycontroller: close({
		policy_controller_hub_config!: matchN(1, [_#defs."/$defs/policycontroller/$defs/policy_controller_hub_config", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/policycontroller/$defs/policy_controller_hub_config"]])

		// Optional. Version of Policy Controller to install. Defaults to
		// the latest version.
		version?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/configmanagement/$defs/config_sync": close({
		// Enables the installation of ConfigSync. If set to true,
		// ConfigSync resources will be created and the other ConfigSync
		// fields will be applied if exist. If set to false, all other
		// ConfigSync fields will be ignored, ConfigSync resources will
		// be deleted. If omitted, ConfigSync resources will be managed
		// depends on the presence of the git or oci field.
		enabled?: bool

		// Deprecated: If Workload Identity Federation for GKE is enabled,
		// Google Cloud Service Account is no longer needed for exporting
		// Config Sync metrics:
		// https://cloud.google.com/kubernetes-engine/enterprise/config-sync/docs/how-to/monitor-config-sync-cloud-monitoring#custom-monitoring.
		metrics_gcp_service_account_email?: string

		// Set to true to enable the Config Sync admission webhook to
		// prevent drifts. If set to `false`, disables the Config Sync
		// admission webhook and does not prevent drifts.
		prevent_drift?: bool

		// Specifies whether the Config Sync Repo is in "hierarchical" or
		// "unstructured" mode.
		source_format?: string

		// Set to true to stop syncing configs for a single cluster.
		// Default: false.
		stop_syncing?: bool
		deployment_overrides?: matchN(1, [_#defs."/$defs/configmanagement/$defs/config_sync/$defs/deployment_overrides", [..._#defs."/$defs/configmanagement/$defs/config_sync/$defs/deployment_overrides"]])
		git?: matchN(1, [_#defs."/$defs/configmanagement/$defs/config_sync/$defs/git", list.MaxItems(1) & [..._#defs."/$defs/configmanagement/$defs/config_sync/$defs/git"]])
		oci?: matchN(1, [_#defs."/$defs/configmanagement/$defs/config_sync/$defs/oci", list.MaxItems(1) & [..._#defs."/$defs/configmanagement/$defs/config_sync/$defs/oci"]])
	})

	_#defs: "/$defs/configmanagement/$defs/config_sync/$defs/deployment_overrides": close({
		containers?: matchN(1, [_#defs."/$defs/configmanagement/$defs/config_sync/$defs/deployment_overrides/$defs/containers", [..._#defs."/$defs/configmanagement/$defs/config_sync/$defs/deployment_overrides/$defs/containers"]])

		// The name of the Deployment.
		deployment_name?: string

		// The namespace of the Deployment.
		deployment_namespace?: string
	})

	_#defs: "/$defs/configmanagement/$defs/config_sync/$defs/deployment_overrides/$defs/containers": close({
		// The name of the container.
		container_name?: string

		// The CPU limit of the container.
		cpu_limit?: string

		// The CPU request of the container.
		cpu_request?: string

		// The memory limit of the container.
		memory_limit?: string

		// The memory request of the container.
		memory_request?: string
	})

	_#defs: "/$defs/configmanagement/$defs/config_sync/$defs/git": close({
		// The GCP Service Account Email used for auth when secretType is
		// gcpServiceAccount.
		gcp_service_account_email?: string

		// URL for the HTTPS proxy to be used when communicating with the
		// Git repo.
		https_proxy?: string

		// The path within the Git repository that represents the top
		// level of the repo to sync. Default: the root directory of the
		// repository.
		policy_dir?: string

		// Type of secret configured for access to the Git repo. Must be
		// one of ssh, cookiefile, gcenode, token, gcpserviceaccount or
		// none. The validation of this is case-sensitive.
		secret_type?: string

		// The branch of the repository to sync from. Default: master.
		sync_branch?: string

		// The URL of the Git repository to use as the source of truth.
		sync_repo?: string

		// Git revision (tag or hash) to check out. Default HEAD.
		sync_rev?: string

		// Period in seconds between consecutive syncs. Default: 15.
		sync_wait_secs?: string
	})

	_#defs: "/$defs/configmanagement/$defs/config_sync/$defs/oci": close({
		// The GCP Service Account Email used for auth when secret_type is
		// gcpserviceaccount.
		gcp_service_account_email?: string

		// The absolute path of the directory that contains the local
		// resources. Default: the root directory of the image.
		policy_dir?: string

		// Type of secret configured for access to the OCI Image. Must be
		// one of gcenode, gcpserviceaccount or none. The validation of
		// this is case-sensitive.
		secret_type?: string

		// The OCI image repository URL for the package to sync from. e.g.
		// LOCATION-docker.pkg.dev/PROJECT_ID/REPOSITORY_NAME/PACKAGE_NAME.
		sync_repo?: string

		// Period in seconds(int64 format) between consecutive syncs.
		// Default: 15.
		sync_wait_secs?: string
	})

	_#defs: "/$defs/configmanagement/$defs/hierarchy_controller": close({
		// Whether hierarchical resource quota is enabled in this cluster.
		enable_hierarchical_resource_quota?: bool

		// Whether pod tree labels are enabled in this cluster.
		enable_pod_tree_labels?: bool

		// **DEPRECATED** Configuring Hierarchy Controller through the
		// configmanagement feature is no longer recommended. Use
		// https://github.com/kubernetes-sigs/hierarchical-namespaces
		// instead.
		enabled?: bool
	})

	_#defs: "/$defs/configmanagement/$defs/policy_controller": close({
		// Sets the interval for Policy Controller Audit Scans (in
		// seconds). When set to 0, this disables audit functionality
		// altogether.
		audit_interval_seconds?: string

		// Enables the installation of Policy Controller. If false, the
		// rest of PolicyController fields take no effect.
		enabled?: bool

		// The set of namespaces that are excluded from Policy Controller
		// checks. Namespaces do not need to currently exist on the
		// cluster.
		exemptable_namespaces?: [...string]

		// Logs all denies and dry run failures.
		log_denies_enabled?: bool

		// Enable or disable mutation in policy controller. If true,
		// mutation CRDs, webhook and controller deployment will be
		// deployed to the cluster.
		mutation_enabled?: bool

		// Enables the ability to use Constraint Templates that reference
		// to objects other than the object currently being evaluated.
		referential_rules_enabled?: bool
		monitoring?: matchN(1, [_#defs."/$defs/configmanagement/$defs/policy_controller/$defs/monitoring", list.MaxItems(1) & [..._#defs."/$defs/configmanagement/$defs/policy_controller/$defs/monitoring"]])

		// Installs the default template library along with Policy
		// Controller.
		template_library_installed?: bool
	})

	_#defs: "/$defs/configmanagement/$defs/policy_controller/$defs/monitoring": close({
		// Specifies the list of backends Policy Controller will export
		// to. Specifying an empty value `[]` disables metrics export.
		backends?: [...string]
	})

	_#defs: "/$defs/policycontroller/$defs/policy_controller_hub_config": close({
		// Sets the interval for Policy Controller Audit Scans (in
		// seconds). When set to 0, this disables audit functionality
		// altogether.
		audit_interval_seconds?: number

		// The maximum number of audit violations to be stored in a
		// constraint. If not set, the internal default of 20 will be
		// used.
		constraint_violation_limit?: number

		// The set of namespaces that are excluded from Policy Controller
		// checks. Namespaces do not need to currently exist on the
		// cluster.
		exemptable_namespaces?: [...string]

		// Configures the mode of the Policy Controller installation.
		// Possible values: INSTALL_SPEC_UNSPECIFIED,
		// INSTALL_SPEC_NOT_INSTALLED, INSTALL_SPEC_ENABLED,
		// INSTALL_SPEC_SUSPENDED, INSTALL_SPEC_DETACHED
		install_spec?: string

		// Logs all denies and dry run failures.
		log_denies_enabled?: bool
		deployment_configs?: matchN(1, [_#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs", [..._#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs"]])
		monitoring?: matchN(1, [_#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/monitoring", list.MaxItems(1) & [..._#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/monitoring"]])

		// Enables the ability to mutate resources using Policy
		// Controller.
		mutation_enabled?: bool
		policy_content?: matchN(1, [_#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content", list.MaxItems(1) & [..._#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content"]])

		// Enables the ability to use Constraint Templates that reference
		// to objects other than the object currently being evaluated.
		referential_rules_enabled?: bool
	})

	_#defs: "/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs": close({
		// The name for the key in the map for which this object is mapped
		// to in the API
		component_name!: string

		// Pod affinity configuration. Possible values:
		// AFFINITY_UNSPECIFIED, NO_AFFINITY, ANTI_AFFINITY
		pod_affinity?: string
		container_resources?: matchN(1, [_#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources", list.MaxItems(1) & [..._#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources"]])

		// Pod replica count.
		replica_count?: number
		pod_tolerations?: matchN(1, [_#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/pod_tolerations", [..._#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/pod_tolerations"]])
	})

	_#defs: "/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources": close({
		limits?: matchN(1, [_#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/limits", list.MaxItems(1) & [..._#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/limits"]])
		requests?: matchN(1, [_#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/requests", list.MaxItems(1) & [..._#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/requests"]])
	})

	_#defs: "/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/limits": close({
		// CPU requirement expressed in Kubernetes resource units.
		cpu?: string

		// Memory requirement expressed in Kubernetes resource units.
		memory?: string
	})

	_#defs: "/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/container_resources/$defs/requests": close({
		// CPU requirement expressed in Kubernetes resource units.
		cpu?: string

		// Memory requirement expressed in Kubernetes resource units.
		memory?: string
	})

	_#defs: "/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/deployment_configs/$defs/pod_tolerations": close({
		// Matches a taint effect.
		effect?: string

		// Matches a taint key (not necessarily unique).
		key?: string

		// Matches a taint operator.
		operator?: string

		// Matches a taint value.
		value?: string
	})

	_#defs: "/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/monitoring": close({
		// Specifies the list of backends Policy Controller will export
		// to. Specifying an empty value `[]` disables metrics export.
		backends?: [...string]
	})

	_#defs: "/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content": close({
		bundles?: matchN(1, [_#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/bundles", [..._#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/bundles"]])
		template_library?: matchN(1, [_#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/template_library", list.MaxItems(1) & [..._#defs."/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/template_library"]])
	})

	_#defs: "/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/bundles": close({
		// The name for the key in the map for which this object is mapped
		// to in the API
		bundle_name!: string

		// The set of namespaces to be exempted from the bundle.
		exempted_namespaces?: [...string]
	})

	_#defs: "/$defs/policycontroller/$defs/policy_controller_hub_config/$defs/policy_content/$defs/template_library": close({
		// Configures the manner in which the template library is
		// installed on the cluster. Possible values:
		// INSTALLATION_UNSPECIFIED, NOT_INSTALLED, ALL
		installation?: string
	})
}
