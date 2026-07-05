package res

import "list"

google_artifact_registry_project_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_artifact_registry_project_config")
	close({
		platform_logs_config?: matchN(1, [#platform_logs_config, list.MaxItems(1) & [...#platform_logs_config]])
		timeouts?: #timeouts
		id?:       string

		// The name of the location this config is located in.
		location?: string

		// The name of the project's config.
		// Always of the form: projects/{project}/locations/{location}/projectConfig
		name?:    string
		project?: string
	})

	#platform_logs_config: close({
		// The state of the platform logs: enabled or disabled. Possible values: ["ENABLED", "DISABLED"]
		logging_state?: string

		// The severity level for the logs. Logs will be generated if their
		// severity level is >= than the value of the severity level mentioned here.
		// Possible values: ["DEBUG", "INFO", "NOTICE", "WARNING", "ERROR", "CRITICAL",
		// "ALERT", "EMERGENCY"]
		severity_level?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
