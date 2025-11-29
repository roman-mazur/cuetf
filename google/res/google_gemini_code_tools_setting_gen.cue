package res

#google_gemini_code_tools_setting: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_gemini_code_tools_setting")
	close({
		// Id of the Code Tools Setting.
		code_tools_setting_id!: string

		// Create time stamp.
		create_time?: string

		// All of labels (key/value pairs) present on the resource in GCP,
		// including the labels configured through Terraform, other
		// clients and services.
		effective_labels?: [string]: string
		id?: string

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
		location?: string

		// Identifier. Name of the resource.
		// Format:projects/{project}/locations/{location}/codeToolsSettings/{codeToolsSetting}
		name?: string
		enabled_tool!: matchN(1, [#enabled_tool, [_, ...] & [...#enabled_tool]])
		timeouts?: #timeouts
		project?:  string

		// The combination of labels configured directly on the resource
		// and default labels configured on the provider.
		terraform_labels?: [string]: string

		// Update time stamp.
		update_time?: string
	})

	#enabled_tool: close({
		// Link to the Dev Connect Account Connector that holds the user
		// credentials.
		// projects/{project}/locations/{location}/accountConnectors/{account_connector_id}
		account_connector?: string

		// Handle used to invoke the tool.
		handle!: string

		// Link to the Tool
		tool!: string
		config?: matchN(1, [_#defs."/$defs/enabled_tool/$defs/config", [..._#defs."/$defs/enabled_tool/$defs/config"]])

		// Overridden URI, if allowed by Tool.
		uri_override?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/enabled_tool/$defs/config": close({
		// Key of the configuration item.
		key!: string

		// Value of the configuration item.
		value!: string
	})
}
