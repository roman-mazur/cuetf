package res

#google_scc_mute_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_scc_mute_config")
	close({
		// The time at which the mute config was created. This field is
		// set by
		// the server and will be ignored if provided on config creation.
		create_time?: string

		// A description of the mute config.
		description?: string

		// Optional. The expiry of the mute config. Only applicable for
		// dynamic configs.
		// If the expiry is set, when the config expires, it is removed
		// from all findings.
		//
		// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond
		// resolution and up to
		// nine fractional digits. Examples: "2014-10-02T15:01:23Z" and
		// "2014-10-02T15:01:23.045123456Z".
		expiry_time?: string

		// An expression that defines the filter to apply across
		// create/update
		// events of findings. While creating a filter string, be mindful
		// of
		// the scope in which the mute configuration is being created.
		// E.g.,
		// If a filter contains project = X but is created under the
		// project = Y scope, it might not match any findings.
		filter!: string

		// Email address of the user who last edited the mute config. This
		// field is set by the server and will be ignored if provided on
		// config creation or update.
		most_recent_editor?: string

		// Unique identifier provided by the client within the parent
		// scope.
		mute_config_id!: string

		// Name of the mute config. Its format is
		// organizations/{organization}/muteConfigs/{configId},
		// folders/{folder}/muteConfigs/{configId},
		// or projects/{project}/muteConfigs/{configId}
		name?: string
		id?:   string

		// Resource name of the new mute configs's parent. Its format is
		// "organizations/[organization_id]", "folders/[folder_id]", or
		// "projects/[project_id]".
		parent!:   string
		timeouts?: #timeouts

		// The type of the mute config, which determines what type of mute
		// state the config affects. Default value: "DYNAMIC" Possible
		// values: ["MUTE_CONFIG_TYPE_UNSPECIFIED", "STATIC", "DYNAMIC"]
		type?: string

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
