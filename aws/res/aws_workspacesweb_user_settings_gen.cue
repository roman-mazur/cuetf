package res

#aws_workspacesweb_user_settings: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_workspacesweb_user_settings")
	close({
		additional_encryption_context?: [string]: string
		cookie_synchronization_configuration?: matchN(1, [#cookie_synchronization_configuration, [...#cookie_synchronization_configuration]])
		associated_portal_arns?: [...string]
		copy_allowed!:         string
		customer_managed_key?: string
		deep_link_allowed?:    string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:                        string
		disconnect_timeout_in_minutes?: number
		download_allowed!:              string
		toolbar_configuration?: matchN(1, [#toolbar_configuration, [...#toolbar_configuration]])
		idle_disconnect_timeout_in_minutes?: number
		paste_allowed!:                      string
		print_allowed!:                      string
		tags?: [string]:     string
		tags_all?: [string]: string
		upload_allowed!:    string
		user_settings_arn?: string
	})

	#cookie_synchronization_configuration: close({
		allowlist?: matchN(1, [_#defs."/$defs/cookie_synchronization_configuration/$defs/allowlist", [..._#defs."/$defs/cookie_synchronization_configuration/$defs/allowlist"]])
		blocklist?: matchN(1, [_#defs."/$defs/cookie_synchronization_configuration/$defs/blocklist", [..._#defs."/$defs/cookie_synchronization_configuration/$defs/blocklist"]])
	})

	#toolbar_configuration: close({
		hidden_toolbar_items?: [...string]
		max_display_resolution?: string
		toolbar_type?:           string
		visual_mode?:            string
	})

	_#defs: "/$defs/cookie_synchronization_configuration/$defs/allowlist": close({
		domain!: string
		name?:   string
		path?:   string
	})

	_#defs: "/$defs/cookie_synchronization_configuration/$defs/blocklist": close({
		domain!: string
		name?:   string
		path?:   string
	})
}
