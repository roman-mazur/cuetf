package res

import "list"

#google_developer_connect_insights_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_developer_connect_insights_config")
	close({
		// User specified annotations. See
		// https://google.aip.dev/148#annotations
		// for more details such as format and size limitations.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the annotations present in your configuration.
		// Please refer to the field 'effective_annotations' for all of
		// the annotations present on the resource.
		annotations?: [string]: string

		// The name of the App Hub Application.
		// Format:
		// projects/{project}/locations/{location}/applications/{application}
		app_hub_application?: string

		// [Output only] Create timestamp
		create_time?: string

		// All of annotations (key/value pairs) present on the resource in
		// GCP, including the annotations configured through Terraform,
		// other clients and services.
		effective_annotations?: [string]: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Any errors that occurred while setting up the InsightsConfig.
		// Each error will be in the format: 'field_name: error_message',
		// e.g.
		// GetAppHubApplication: Permission denied while getting App Hub
		// application. Please grant permissions to the P4SA.
		errors?: [...close({
			code?: number
			details?: [...close({
				detail_message?: string
			})]
			message?: string
		})]
		id?: string

		// ID of the requesting InsightsConfig.
		insights_config_id!: string

		// Set of labels associated with an InsightsConfig.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location!: string

		// Identifier. The name of the InsightsConfig.
		// Format:
		// projects/{project}/locations/{location}/insightsConfigs/{insightsConfig}
		name?:    string
		project?: string
		artifact_configs?: matchN(1, [#artifact_configs, [...#artifact_configs]])
		target_projects?: matchN(1, [#target_projects, list.MaxItems(1) & [...#target_projects]])
		timeouts?: #timeouts

		// Reconciling (https://google.aip.dev/128#reconciliation).
		// Set to true if the current state of InsightsConfig does not
		// match the
		// user's intended state, and the service is actively updating the
		// resource to
		// reconcile them. This can happen due to user-triggered updates
		// or
		// system actions like failover or maintenance.
		reconciling?: bool

		// The runtime configurations where the application is deployed.
		runtime_configs?: [...close({
			app_hub_workload?: [...close({
				criticality?: string
				environment?: string
				workload?:    string
			})]
			gke_workload?: [...close({
				cluster?:    string
				deployment?: string
			})]
			state?: string
			uri?:   string
		})]

		// The state of the InsightsConfig.
		// Possible values:
		// STATE_UNSPECIFIED
		// PENDING
		// COMPLETE
		// ERROR
		state?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// [Output only] Update timestamp
		update_time?: string
	})

	#artifact_configs: close({
		google_artifact_analysis?: matchN(1, [_#defs."/$defs/artifact_configs/$defs/google_artifact_analysis", list.MaxItems(1) & [..._#defs."/$defs/artifact_configs/$defs/google_artifact_analysis"]])
		google_artifact_registry?: matchN(1, [_#defs."/$defs/artifact_configs/$defs/google_artifact_registry", list.MaxItems(1) & [..._#defs."/$defs/artifact_configs/$defs/google_artifact_registry"]])

		// The URI of the artifact that is deployed.
		// e.g. 'us-docker.pkg.dev/my-project/my-repo/image'.
		// The URI does not include the tag / digest because it captures a
		// lineage of
		// artifacts.
		uri?: string
	})

	#target_projects: close({
		// The project IDs. Format {project}.
		project_ids?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/artifact_configs/$defs/google_artifact_analysis": close({
		// The project id of the project where the provenance is stored.
		project_id!: string
	})

	_#defs: "/$defs/artifact_configs/$defs/google_artifact_registry": close({
		// The name of the artifact registry package.
		artifact_registry_package!: string

		// The host project of Artifact Registry.
		project_id!: string
	})
}
