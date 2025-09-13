package res

import "list"

#google_apigee_addons_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_apigee_addons_config")
	close({
		addons_config?: matchN(1, [#addons_config, list.MaxItems(1) & [...#addons_config]])
		timeouts?: #timeouts
		id?:       string

		// Name of the Apigee organization.
		org!: string
	})

	#addons_config: close({
		advanced_api_ops_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/advanced_api_ops_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/advanced_api_ops_config"]])
		api_security_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/api_security_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/api_security_config"]])
		connectors_platform_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/connectors_platform_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/connectors_platform_config"]])
		integration_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/integration_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/integration_config"]])
		monetization_config?: matchN(1, [_#defs."/$defs/addons_config/$defs/monetization_config", list.MaxItems(1) & [..._#defs."/$defs/addons_config/$defs/monetization_config"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/addons_config/$defs/advanced_api_ops_config": close({
		// Flag that specifies whether the Advanced API Ops add-on is
		// enabled.
		enabled?: bool
	})

	_#defs: "/$defs/addons_config/$defs/api_security_config": close({
		// Flag that specifies whether the API security add-on is enabled.
		enabled?: bool

		// Time at which the API Security add-on expires in in
		// milliseconds since epoch. If unspecified, the add-on will
		// never expire.
		expires_at?: string
	})

	_#defs: "/$defs/addons_config/$defs/connectors_platform_config": close({
		// Flag that specifies whether the Connectors Platform add-on is
		// enabled.
		enabled?: bool

		// Time at which the Connectors Platform add-on expires in
		// milliseconds since epoch. If unspecified, the add-on will
		// never expire.
		expires_at?: string
	})

	_#defs: "/$defs/addons_config/$defs/integration_config": close({
		// Flag that specifies whether the Integration add-on is enabled.
		enabled?: bool
	})

	_#defs: "/$defs/addons_config/$defs/monetization_config": close({
		// Flag that specifies whether the Monetization add-on is enabled.
		enabled?: bool
	})
}
