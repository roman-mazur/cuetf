package res

#google_scc_v2_project_mute_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_scc_v2_project_mute_config")
	close({
		// The time at which the mute config was created. This field is
		// set by
		// the server and will be ignored if provided on config creation.
		create_time?: string

		// A description of the mute config.
		description?: string

		// An expression that defines the filter to apply across
		// create/update
		// events of findings. While creating a filter string, be mindful
		// of
		// the scope in which the mute configuration is being created.
		// E.g.,
		// If a filter contains project = X but is created under the
		// project = Y scope, it might not match any findings.
		filter!: string
		id?:     string

		// location Id is provided by project. If not provided, Use global
		// as default.
		location?: string

		// Email address of the user who last edited the mute config. This
		// field is set by the server and will be ignored if provided on
		// config creation or update.
		most_recent_editor?: string

		// Unique identifier provided by the client within the parent
		// scope.
		mute_config_id!: string

		// Name of the mute config. Its format is
		// projects/{project}/locations/global/muteConfigs/{configId},
		// folders/{folder}/locations/global/muteConfigs/{configId},
		// or
		// organizations/{organization}/locations/global/muteConfigs/{configId}
		name?:     string
		timeouts?: #timeouts
		project?:  string

		// The type of the mute config.
		type!: string

		// Output only. The most recent time at which the mute config was
		// updated. This field is set by the server and will be ignored if
		// provided on config creation or update.
		update_time?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
