package res

import "list"

#google_discovery_engine_acl_config: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_discovery_engine_acl_config")
	close({
		id?: string

		// The geographic location where the data store should reside. The
		// value can
		// only be one of "global", "us" and "eu".
		location!: string

		// The unique full resource name of the aclConfig. Values are of
		// the format
		// 'projects/{project}/locations/{location}/aclConfig'.
		name?: string
		idp_config?: matchN(1, [#idp_config, list.MaxItems(1) & [...#idp_config]])
		timeouts?: #timeouts
		project?:  string
	})

	#idp_config: close({
		external_idp_config?: matchN(1, [_#defs."/$defs/idp_config/$defs/external_idp_config", list.MaxItems(1) & [..._#defs."/$defs/idp_config/$defs/external_idp_config"]])

		// Identity provider type. Possible values: ["GSUITE",
		// "THIRD_PARTY"]
		idp_type?: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/idp_config/$defs/external_idp_config": close({
		// Workforce pool name: "locations/global/workforcePools/pool_id"
		workforce_pool_name?: string
	})
}
