package res

#google_apigee_app_group: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_apigee_app_group")
	close({
		// Internal identifier that cannot be edited
		app_group_id?: string

		// Channel identifier identifies the owner maintaining this
		// grouping.
		channel_id?: string

		// A reference to the associated storefront/marketplace.
		channel_uri?: string

		// Created time as milliseconds since epoch.
		created_at?: string

		// App group name displayed in the UI
		display_name?: string
		id?:           string

		// Modified time as milliseconds since epoch.
		last_modified_at?: string

		// Name of the AppGroup. Characters you can use in the name are
		// restricted to: A-Z0-9._-$ %.
		name!: string
		attributes?: matchN(1, [#attributes, [...#attributes]])
		timeouts?: #timeouts

		// The Apigee Organization associated with the Apigee app group,
		// in the format 'organizations/{{org_name}}'.
		org_id!: string

		// App group name displayed in the UI
		organization?: string

		// Valid values are active or inactive. Note that the status of
		// the AppGroup should be updated via UpdateAppGroupRequest by
		// setting the action as active or inactive. Possible values:
		// ["active", "inactive"]
		status?: string
	})

	#attributes: close({
		// Key of the attribute
		name?: string

		// Value of the attribute
		value?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
