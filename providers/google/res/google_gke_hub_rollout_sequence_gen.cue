package res

import "list"

google_gke_hub_rollout_sequence: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_gke_hub_rollout_sequence")
	close({
		auto_upgrade_config?: matchN(1, [#auto_upgrade_config, list.MaxItems(1) & [...#auto_upgrade_config]])
		ignored_clusters_selector?: matchN(1, [#ignored_clusters_selector, list.MaxItems(1) & [...#ignored_clusters_selector]])
		stages!: matchN(1, [#stages, [_, ...] & [...#stages]])
		timeouts?: #timeouts

		// The timestamp at which the Rollout Sequence was created.
		create_time?: string

		// The timestamp at the Rollout Sequence was deleted.
		delete_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// Human readable display name of the Rollout Sequence.
		display_name?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// etag of the Rollout Sequence.
		etag?: string
		id?:   string

		// Labels for this Rollout Sequence.
		//
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// The full resource name of the RolloutSequence.
		name?: string

		// The user-provided identifier of the RolloutSequence.
		rollout_sequence_id!: string
		project?:             string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Google-generated UUID for this resource.
		uid?: string

		// The timestamp at which the Rollout Sequence was last updated.
		update_time?: string
	})

	#auto_upgrade_config: close({
		rollout_creation_scope?: matchN(1, [_#defs."/$defs/auto_upgrade_config/$defs/rollout_creation_scope", list.MaxItems(1) & [..._#defs."/$defs/auto_upgrade_config/$defs/rollout_creation_scope"]])
	})

	#ignored_clusters_selector: close({
		// The label selector must be a valid CEL (Common Expression Language) expression which
		// evaluates resource.labels.
		label_selector!: string
	})

	#stages: close({
		cluster_selector?: matchN(1, [_#defs."/$defs/stages/$defs/cluster_selector", list.MaxItems(1) & [..._#defs."/$defs/stages/$defs/cluster_selector"]])

		// List of Fleet projects to select the clusters from.
		// Expected format: projects/{project}
		fleet_projects!: [...string]

		// Soak time after upgrading all the clusters in the stage.
		// Has to be specified in seconds, minutes, hours or days.
		soak_duration?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/auto_upgrade_config/$defs/rollout_creation_scope": close({
		// The list of enabled upgrade types.
		// Current valid values are 'CONTROL_PLANE_MINOR', 'CONTROL_PLANE_PATCH',
		// 'NODE_MINOR', and 'NODE_PATCH'.
		upgrade_types?: [...string]
	})

	_#defs: "/$defs/stages/$defs/cluster_selector": close({
		// The label selector must be a valid CEL (Common Expression Language) expression which
		// evaluates resource.labels.
		label_selector!: string
	})
}
