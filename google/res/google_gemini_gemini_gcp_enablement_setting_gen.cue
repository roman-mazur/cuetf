package res

#google_gemini_gemini_gcp_enablement_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_gemini_gemini_gcp_enablement_setting")
	close({
		// Create time stamp.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Whether customer data sharing should be enabled.
		enable_customer_data_sharing?: bool

		// Id of the Gemini Gcp Enablement setting.
		gemini_gcp_enablement_setting_id!: string
		id?:                               string

		// Labels as key value pairs.
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

		// Identifier. Name of the resource.
		// Format:projects/{project}/locations/{location}/geminiGcpEnablementSettings/{geminiGcpEnablementSetting}
		name?:     string
		project?:  string
		timeouts?: #timeouts

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Update time stamp.
		update_time?: string

		// Web grounding type.
		// Possible values:
		// GROUNDING_WITH_GOOGLE_SEARCH
		// WEB_GROUNDING_FOR_ENTERPRISE
		web_grounding_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
