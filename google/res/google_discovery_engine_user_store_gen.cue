package res

#google_discovery_engine_user_store: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/google_discovery_engine_user_store")
	close({
		// The resource name of the default license config assigned to
		// users created in
		// this user store. Format:
		// 'projects/{project}/locations/{location}/licenseConfigs/{license_config}'.
		// If 'enableLicenseAutoRegister' is true, new users will
		// automatically
		// register under the default subscription.
		// If the default license config doesn't have remaining license
		// seats left,
		// new users will not be assigned with license.
		default_license_config?: string

		// Whether to enable automatic license update for users with
		// expired licenses
		// in this user store. If enabled, users with expired licenses
		// will
		// automatically be updated to the default subscription if there
		// are
		// remaining license seats.
		enable_expired_license_auto_update?: bool

		// Whether to enable automatic license registration for new users
		// created in
		// this user store. If enabled, new users will automatically
		// register under
		// the default subscription.
		enable_license_auto_register?: bool
		id?:                           string

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string

		// The unique full resource name of the user store. Values are of
		// the format
		// 'projects/{project}/locations/{location}/userStores/{user_store_id}'.
		name?:     string
		project?:  string
		timeouts?: #timeouts

		// The ID of the user store. Currently only accepts
		// "default_user_store".
		user_store_id?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})
}
