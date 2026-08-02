package res

import "list"

google_compute_rollout_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_compute_rollout_plan")
	close({
		timeouts?: #timeouts
		waves!: matchN(1, [#waves, [_, ...] & [...#waves]])

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// An optional description of this resource.
		description?: string
		id?:          string

		// The location scope of the rollout plan. Possible values:
		// ["LOCATION_SCOPE_UNSPECIFIED", "ZONAL", "REGIONAL"]
		location_scope?: string

		// Name of the resource. Provided by the client when the resource is created.
		// The name must be 1-63 characters long, and comply with RFC1035.
		name!:      string
		project?:   string
		self_link?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
	})

	#waves: close({
		orchestration_options?: matchN(1, [_#defs."/$defs/waves/$defs/orchestration_options", list.MaxItems(1) & [..._#defs."/$defs/waves/$defs/orchestration_options"]])
		selectors!: matchN(1, [_#defs."/$defs/waves/$defs/selectors", [_, ...] & [..._#defs."/$defs/waves/$defs/selectors"]])
		validation!: matchN(1, [_#defs."/$defs/waves/$defs/validation", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/waves/$defs/validation"]])

		// The display name of this wave of the rollout plan.
		display_name?: string

		// The wave number.
		"number"?: number
	})

	_#defs: "/$defs/waves/$defs/orchestration_options": close({
		delays?: matchN(1, [_#defs."/$defs/waves/$defs/orchestration_options/$defs/delays", [..._#defs."/$defs/waves/$defs/orchestration_options/$defs/delays"]])

		// Maximum number of locations to be orchestrated in parallel.
		max_concurrent_locations?: number

		// Maximum number of resources to be orchestrated per location in parallel.
		max_concurrent_resources_per_location?: number
	})

	_#defs: "/$defs/waves/$defs/orchestration_options/$defs/delays": close({
		// Controls whether the delay should only be added between batches of projects
		// corresponding to different locations, or also between batches of projects
		// corresponding to the same location. Possible values:
		// ["DELIMITER_UNSPECIFIED", "DELIMITER_LOCATION", "DELIMITER_BATCH"]
		delimiter?: string

		// The duration of the delay, if any, to be added between batches of projects.
		duration?: string

		// Controls whether the specified duration is to be added at the end of each
		// batch, or if the total processing time for each batch will be padded if
		// needed to meet the specified duration. Possible values: ["TYPE_UNSPECIFIED",
		// "TYPE_OFFSET", "TYPE_MINIMUM"]
		type?: string
	})

	_#defs: "/$defs/waves/$defs/selectors": close({
		location_selector?: matchN(1, [_#defs."/$defs/waves/$defs/selectors/$defs/location_selector", list.MaxItems(1) & [..._#defs."/$defs/waves/$defs/selectors/$defs/location_selector"]])
		resource_hierarchy_selector?: matchN(1, [_#defs."/$defs/waves/$defs/selectors/$defs/resource_hierarchy_selector", list.MaxItems(1) & [..._#defs."/$defs/waves/$defs/selectors/$defs/resource_hierarchy_selector"]])
	})

	_#defs: "/$defs/waves/$defs/selectors/$defs/location_selector": close({
		// Example: "us-central1-a"
		included_locations?: [...string]
	})

	_#defs: "/$defs/waves/$defs/selectors/$defs/resource_hierarchy_selector": close({
		// Format: "folders/{folder_id}"
		included_folders?: [...string]

		// Format: "organizations/{organization_id}"
		included_organizations?: [...string]

		// Format: "projects/{project_id}"
		included_projects?: [...string]
	})

	_#defs: "/$defs/waves/$defs/validation": close({
		time_based_validation_metadata?: matchN(1, [_#defs."/$defs/waves/$defs/validation/$defs/time_based_validation_metadata", list.MaxItems(1) & [..._#defs."/$defs/waves/$defs/validation/$defs/time_based_validation_metadata"]])

		// The type of the validation. Possible values:
		// "manual": The system waits for an end-user approval API before progressing to the next wave.
		// "time": The system waits for a user specified duration before progressing to the next wave.
		type!: string
	})

	_#defs: "/$defs/waves/$defs/validation/$defs/time_based_validation_metadata": close({
		// The duration that the system waits in between waves. This wait starts
		// after all changes in the wave are rolled out.
		wait_duration?: string
	})
}
