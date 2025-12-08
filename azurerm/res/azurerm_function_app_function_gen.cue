package res

#azurerm_function_app_function: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/azurerm_function_app_function")
	close({
		// The config for this Function in JSON format.
		config_json!: string

		// The URL of the configuration JSON.
		config_url?: string

		// Should this function be enabled. Defaults to `true`.
		enabled?: bool

		// The ID of the Function App in which this function should
		// reside.
		function_app_id!: string

		// The invocation URL.
		invocation_url?: string

		// The language the Function is written in.
		language?: string

		// The name of the function.
		name!: string
		id?:   string

		// The Script root path URL.
		script_root_path_url?: string

		// The script URL.
		script_url?: string

		// The URL for the Secrets File.
		secrets_file_url?: string
		file?: matchN(1, [#file, [...#file]])
		timeouts?: #timeouts

		// The test data for the function.
		test_data?: string

		// The Test data URL.
		test_data_url?: string

		// The function URL.
		url?: string
	})

	#file: close({
		// The content of the file.
		content!: string

		// The filename of the file to be uploaded.
		name!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})
}
