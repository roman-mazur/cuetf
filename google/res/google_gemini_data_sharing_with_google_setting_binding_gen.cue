package res

#google_gemini_data_sharing_with_google_setting_binding: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_gemini_data_sharing_with_google_setting_binding")
	close({
		// Create time stamp.
		create_time?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		data_sharing_with_google_setting_id!: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string

		// Labels as key value pairs.
		//
		// **Note**: This field is non-authoritative, and will only manage
		// the labels present in your configuration.
		// Please refer to the field 'effective_labels' for all of the
		// labels present on the resource.
		labels?: [string]: string
		id?: string

		// Resource ID segment making up resource 'name'. It identifies
		// the resource within its parent collection as described in
		// https://google.aip.dev/122.
		location?: string

		// Identifier. Name of the resource.
		// Format:projects/{project}/locations/{location}/dataSharingWithGoogleSettings/{setting}/settingBindings/{setting_binding}
		name?: string

		// Product type of the setting binding. Values include
		// GEMINI_IN_BIGQUERY, GEMINI_CLOUD_ASSIST, etc. See [product
		// reference](https://cloud.google.com/gemini/docs/api/reference/rest/v1/projects.locations.dataSharingWithGoogleSettings.settingBindings)
		// for a complete list.
		product?: string

		// Required. Id of the setting binding.
		setting_binding_id!: string
		timeouts?:           #timeouts
		project?:            string

		// Target of the binding.
		target!: string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Update time stamp.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
