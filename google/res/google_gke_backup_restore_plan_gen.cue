package res

import "list"

#google_gke_backup_restore_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gke_backup_restore_plan")
	close({
		// A reference to the BackupPlan from which Backups may be used
		// as the source for Restores created via this RestorePlan.
		backup_plan!: string

		// The source cluster from which Restores will be created via this
		// RestorePlan.
		cluster!: string

		// User specified descriptive string for this RestorePlan.
		description?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

		// Description: A set of custom labels supplied by the user.
		// A list of key->value pairs.
		// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// The region of the Restore Plan.
		location!: string

		// The full name of the BackupPlan Resource.
		name!:    string
		project?: string
		restore_config!: matchN(1, [#restore_config, list.MaxItems(1) & [_, ...] & [...#restore_config]])
		timeouts?: #timeouts

		// The State of the RestorePlan.
		state?: string

		// Detailed description of why RestorePlan is in its current
		// state.
		state_reason?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Server generated, unique identifier of UUID format.
		uid?: string
	})

	#restore_config: close({
		// If True, restore all namespaced resources in the Backup.
		// Setting this field to False will result in an error.
		all_namespaces?: bool

		// Defines the behavior for handling the situation where
		// cluster-scoped resources
		// being restored already exist in the target cluster.
		// This MUST be set to a value other than
		// 'CLUSTER_RESOURCE_CONFLICT_POLICY_UNSPECIFIED'
		// if 'clusterResourceRestoreScope' is anyting other than
		// 'noGroupKinds'.
		// See
		// https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#clusterresourceconflictpolicy
		// for more information on each policy option. Possible values:
		// ["USE_EXISTING_VERSION", "USE_BACKUP_VERSION"]
		cluster_resource_conflict_policy?: string

		// Defines the behavior for handling the situation where sets of
		// namespaced resources
		// being restored already exist in the target cluster.
		// This MUST be set to a value other than
		// 'NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED'
		// if the 'namespacedResourceRestoreScope' is anything other than
		// 'noNamespaces'.
		// See
		// https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#namespacedresourcerestoremode
		// for more information on each mode. Possible values:
		// ["DELETE_AND_RESTORE", "FAIL_ON_CONFLICT",
		// "MERGE_SKIP_ON_CONFLICT", "MERGE_REPLACE_VOLUME_ON_CONFLICT",
		// "MERGE_REPLACE_ON_CONFLICT"]
		namespaced_resource_restore_mode?: string
		cluster_resource_restore_scope?: matchN(1, [_#defs."/$defs/restore_config/$defs/cluster_resource_restore_scope", list.MaxItems(1) & [..._#defs."/$defs/restore_config/$defs/cluster_resource_restore_scope"]])

		// Do not restore any namespaced resources if set to "True".
		// Specifying this field to "False" is not allowed.
		no_namespaces?: bool
		excluded_namespaces?: matchN(1, [_#defs."/$defs/restore_config/$defs/excluded_namespaces", list.MaxItems(1) & [..._#defs."/$defs/restore_config/$defs/excluded_namespaces"]])
		restore_order?: matchN(1, [_#defs."/$defs/restore_config/$defs/restore_order", list.MaxItems(1) & [..._#defs."/$defs/restore_config/$defs/restore_order"]])
		selected_applications?: matchN(1, [_#defs."/$defs/restore_config/$defs/selected_applications", list.MaxItems(1) & [..._#defs."/$defs/restore_config/$defs/selected_applications"]])
		selected_namespaces?: matchN(1, [_#defs."/$defs/restore_config/$defs/selected_namespaces", list.MaxItems(1) & [..._#defs."/$defs/restore_config/$defs/selected_namespaces"]])
		transformation_rules?: matchN(1, [_#defs."/$defs/restore_config/$defs/transformation_rules", [..._#defs."/$defs/restore_config/$defs/transformation_rules"]])
		volume_data_restore_policy_bindings?: matchN(1, [_#defs."/$defs/restore_config/$defs/volume_data_restore_policy_bindings", [..._#defs."/$defs/restore_config/$defs/volume_data_restore_policy_bindings"]])

		// Specifies the mechanism to be used to restore volume data.
		// This should be set to a value other than
		// 'NAMESPACED_RESOURCE_RESTORE_MODE_UNSPECIFIED'
		// if the 'namespacedResourceRestoreScope' is anything other than
		// 'noNamespaces'.
		// If not specified, it will be treated as
		// 'NO_VOLUME_DATA_RESTORATION'.
		// See
		// https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#VolumeDataRestorePolicy
		// for more information on each policy option. Possible values:
		// ["RESTORE_VOLUME_DATA_FROM_BACKUP",
		// "REUSE_VOLUME_HANDLE_FROM_BACKUP",
		// "NO_VOLUME_DATA_RESTORATION"]
		volume_data_restore_policy?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/restore_config/$defs/cluster_resource_restore_scope": close({
		excluded_group_kinds?: matchN(1, [_#defs."/$defs/restore_config/$defs/cluster_resource_restore_scope/$defs/excluded_group_kinds", [..._#defs."/$defs/restore_config/$defs/cluster_resource_restore_scope/$defs/excluded_group_kinds"]])
		selected_group_kinds?: matchN(1, [_#defs."/$defs/restore_config/$defs/cluster_resource_restore_scope/$defs/selected_group_kinds", [..._#defs."/$defs/restore_config/$defs/cluster_resource_restore_scope/$defs/selected_group_kinds"]])

		// If True, all valid cluster-scoped resources will be restored.
		// Mutually exclusive to any other field in
		// 'clusterResourceRestoreScope'.
		all_group_kinds?: bool

		// If True, no cluster-scoped resources will be restored.
		// Mutually exclusive to any other field in
		// 'clusterResourceRestoreScope'.
		no_group_kinds?: bool
	})

	_#defs: "/$defs/restore_config/$defs/cluster_resource_restore_scope/$defs/excluded_group_kinds": close({
		// API Group string of a Kubernetes resource, e.g.
		// "apiextensions.k8s.io", "storage.k8s.io", etc.
		// Use empty string for core group.
		resource_group?: string

		// Kind of a Kubernetes resource, e.g.
		// "CustomResourceDefinition", "StorageClass", etc.
		resource_kind?: string
	})

	_#defs: "/$defs/restore_config/$defs/cluster_resource_restore_scope/$defs/selected_group_kinds": close({
		// API Group string of a Kubernetes resource, e.g.
		// "apiextensions.k8s.io", "storage.k8s.io", etc.
		// Use empty string for core group.
		resource_group?: string

		// Kind of a Kubernetes resource, e.g.
		// "CustomResourceDefinition", "StorageClass", etc.
		resource_kind?: string
	})

	_#defs: "/$defs/restore_config/$defs/excluded_namespaces": close({
		// A list of Kubernetes Namespaces.
		namespaces!: [...string]
	})

	_#defs: "/$defs/restore_config/$defs/restore_order": close({
		group_kind_dependencies!: matchN(1, [_#defs."/$defs/restore_config/$defs/restore_order/$defs/group_kind_dependencies", [_, ...] & [..._#defs."/$defs/restore_config/$defs/restore_order/$defs/group_kind_dependencies"]])
	})

	_#defs: "/$defs/restore_config/$defs/restore_order/$defs/group_kind_dependencies": close({
		requiring!: matchN(1, [_#defs."/$defs/restore_config/$defs/restore_order/$defs/group_kind_dependencies/$defs/requiring", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/restore_config/$defs/restore_order/$defs/group_kind_dependencies/$defs/requiring"]])
		satisfying!: matchN(1, [_#defs."/$defs/restore_config/$defs/restore_order/$defs/group_kind_dependencies/$defs/satisfying", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/restore_config/$defs/restore_order/$defs/group_kind_dependencies/$defs/satisfying"]])
	})

	_#defs: "/$defs/restore_config/$defs/restore_order/$defs/group_kind_dependencies/$defs/requiring": close({
		// API Group of a Kubernetes resource, e.g.
		// "apiextensions.k8s.io", "storage.k8s.io", etc.
		// Use empty string for core group.
		resource_group?: string

		// Kind of a Kubernetes resource, e.g.
		// "CustomResourceDefinition", "StorageClass", etc.
		resource_kind?: string
	})

	_#defs: "/$defs/restore_config/$defs/restore_order/$defs/group_kind_dependencies/$defs/satisfying": close({
		// API Group of a Kubernetes resource, e.g.
		// "apiextensions.k8s.io", "storage.k8s.io", etc.
		// Use empty string for core group.
		resource_group?: string

		// Kind of a Kubernetes resource, e.g.
		// "CustomResourceDefinition", "StorageClass", etc.
		resource_kind?: string
	})

	_#defs: "/$defs/restore_config/$defs/selected_applications": close({
		namespaced_names!: matchN(1, [_#defs."/$defs/restore_config/$defs/selected_applications/$defs/namespaced_names", [_, ...] & [..._#defs."/$defs/restore_config/$defs/selected_applications/$defs/namespaced_names"]])
	})

	_#defs: "/$defs/restore_config/$defs/selected_applications/$defs/namespaced_names": close({
		// The name of a Kubernetes Resource.
		name!: string

		// The namespace of a Kubernetes Resource.
		namespace!: string
	})

	_#defs: "/$defs/restore_config/$defs/selected_namespaces": close({
		// A list of Kubernetes Namespaces.
		namespaces!: [...string]
	})

	_#defs: "/$defs/restore_config/$defs/transformation_rules": close({
		field_actions!: matchN(1, [_#defs."/$defs/restore_config/$defs/transformation_rules/$defs/field_actions", [_, ...] & [..._#defs."/$defs/restore_config/$defs/transformation_rules/$defs/field_actions"]])
		resource_filter?: matchN(1, [_#defs."/$defs/restore_config/$defs/transformation_rules/$defs/resource_filter", list.MaxItems(1) & [..._#defs."/$defs/restore_config/$defs/transformation_rules/$defs/resource_filter"]])

		// The description is a user specified string description
		// of the transformation rule.
		description?: string
	})

	_#defs: "/$defs/restore_config/$defs/transformation_rules/$defs/field_actions": close({
		// A string containing a JSON Pointer value that references the
		// location in the target document to move the value from.
		from_path?: string

		// Specifies the operation to perform. Possible values: ["REMOVE",
		// "MOVE", "COPY", "ADD", "TEST", "REPLACE"]
		op!: string

		// A string containing a JSON-Pointer value that references a
		// location within the target document where the operation is
		// performed.
		path?: string

		// A string that specifies the desired value in string format
		// to use for transformation.
		value?: string
	})

	_#defs: "/$defs/restore_config/$defs/transformation_rules/$defs/resource_filter": close({
		group_kinds?: matchN(1, [_#defs."/$defs/restore_config/$defs/transformation_rules/$defs/resource_filter/$defs/group_kinds", [..._#defs."/$defs/restore_config/$defs/transformation_rules/$defs/resource_filter/$defs/group_kinds"]])

		// This is a JSONPath expression that matches specific fields of
		// candidate resources and it operates as a filtering parameter
		// (resources that are not matched with this expression will not
		// be candidates for transformation).
		json_path?: string

		// (Filtering parameter) Any resource subject to transformation
		// must
		// be contained within one of the listed Kubernetes Namespace in
		// the
		// Backup. If this field is not provided, no namespace filtering
		// will
		// be performed (all resources in all Namespaces, including all
		// cluster-scoped resources, will be candidates for
		// transformation).
		// To mix cluster-scoped and namespaced resources in the same
		// rule,
		// use an empty string ("") as one of the target namespaces.
		namespaces?: [...string]
	})

	_#defs: "/$defs/restore_config/$defs/transformation_rules/$defs/resource_filter/$defs/group_kinds": close({
		// API Group string of a Kubernetes resource, e.g.
		// "apiextensions.k8s.io", "storage.k8s.io", etc.
		// Use empty string for core group.
		resource_group?: string

		// Kind of a Kubernetes resource, e.g.
		// "CustomResourceDefinition", "StorageClass", etc.
		resource_kind?: string
	})

	_#defs: "/$defs/restore_config/$defs/volume_data_restore_policy_bindings": close({
		// Specifies the mechanism to be used to restore this volume data.
		// See
		// https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/RestoreConfig#VolumeDataRestorePolicy
		// for more information on each policy option. Possible values:
		// ["RESTORE_VOLUME_DATA_FROM_BACKUP",
		// "REUSE_VOLUME_HANDLE_FROM_BACKUP",
		// "NO_VOLUME_DATA_RESTORATION"]
		policy!: string

		// The volume type, as determined by the PVC's
		// bound PV, to apply the policy to. Possible values:
		// ["GCE_PERSISTENT_DISK"]
		volume_type!: string
	})
}
