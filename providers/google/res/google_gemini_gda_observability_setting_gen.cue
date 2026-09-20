package res

import "list"

google_gemini_gda_observability_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_gemini_gda_observability_setting")
	close({
		conversational_analytics_setting?: matchN(1, [#conversational_analytics_setting, list.MaxItems(1) & [...#conversational_analytics_setting]])
		timeouts?: #timeouts

		// Create time stamp.
		create_time?: string

		// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
		// When a 'terraform destroy' or 'terraform apply' would delete the instance,
		// the command will fail if this field is set to "PREVENT" in Terraform state.
		// When set to "ABANDON", the command will remove the resource from Terraform
		// management without updating or deleting the resource in the API.
		// When set to "DELETE", deleting the resource is allowed.
		deletion_policy?: string

		// All of labels (key/value pairs) present on the resource in GCP, including the
		// labels configured through Terraform, other clients and services.
		effective_labels?: [string]: string

		// Id of the Gda Observability Setting.
		gda_observability_setting_id!: string
		id?:                           string

		// Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage the labels
		// present in your configuration.
		// Please refer to the field 'effective_labels' for all of the labels present on the resource.
		labels?: [string]: string

		// Resource ID segment making up resource 'name'. It identifies the resource
		// within its parent collection as described in https://google.aip.dev/122.
		location!: string

		// Identifier. Name of the resource.
		// Format:projects/{project}/locations/{location}/gdaObservabilitySettings/{gdaObservabilitySetting}
		name?: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string
		project?: string

		// Update time stamp.
		update_time?: string
	})

	#conversational_analytics_setting: close({
		// Whether to enable feedback.
		feedback_enabled?: bool

		// Whether to enable logging.
		logging_enabled?: bool

		// Whether to enable metrics.
		metrics_enabled?: bool

		// Whether to enable traces.
		traces_enabled?: bool
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
