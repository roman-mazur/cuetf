package res

google_cloud_quotas_quota_adjuster_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_cloud_quotas_quota_adjuster_settings")
	close({
		timeouts?: #timeouts

		// Required. The configured value of the enablement at the given resource.
		// Possible values: ["ENABLED", "DISABLED"]
		enablement!: string
		id?:         string

		// Indicates whether the setting is inherited or explicitly specified.
		inherited?: bool

		// The resource container from which the setting is inherited. This refers to
		// the nearest ancestor with enablement set (either ENABLED or DISABLED).
		// The value can be 'organizations/{organization_id}', 'folders/{folder_id}', or
		// can be 'default' if no ancestor exists with enablement set.
		// The value will be empty when 'enablement' is specified on this resource container.
		inherited_from?: string

		// The parent of the quota preference. Allowed parent format is "projects/[project-id / number]".
		parent?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
