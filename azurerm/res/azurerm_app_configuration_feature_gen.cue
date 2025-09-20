package res

#azurerm_app_configuration_feature: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_app_configuration_feature")
	close({
		configuration_store_id!: string
		description?:            string
		enabled?:                bool
		etag?:                   string
		targeting_filter?: matchN(1, [#targeting_filter, [...#targeting_filter]])
		id?:                      string
		key?:                     string
		label?:                   string
		locked?:                  bool
		name!:                    string
		percentage_filter_value?: number
		timeouts?:                #timeouts
		timewindow_filter?: matchN(1, [#timewindow_filter, [...#timewindow_filter]])
		tags?: [string]: string
	})

	#targeting_filter: close({
		groups?: matchN(1, [_#defs."/$defs/targeting_filter/$defs/groups", [..._#defs."/$defs/targeting_filter/$defs/groups"]])
		default_rollout_percentage!: number
		users?: [...string]
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#timewindow_filter: close({
		end?:   string
		start?: string
	})

	_#defs: "/$defs/targeting_filter/$defs/groups": close({
		name!:               string
		rollout_percentage!: number
	})
}
