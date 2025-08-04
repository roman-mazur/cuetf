package res

import "list"

#aws_iot_indexing_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_iot_indexing_configuration")
	close({
		thing_group_indexing_configuration?: matchN(1, [#thing_group_indexing_configuration, list.MaxItems(1) & [...#thing_group_indexing_configuration]])
		thing_indexing_configuration?: matchN(1, [#thing_indexing_configuration, list.MaxItems(1) & [...#thing_indexing_configuration]])
		id?:     string
		region?: string
	})

	#thing_group_indexing_configuration: close({
		custom_field?: matchN(1, [_#defs."/$defs/thing_group_indexing_configuration/$defs/custom_field", [..._#defs."/$defs/thing_group_indexing_configuration/$defs/custom_field"]])
		managed_field?: matchN(1, [_#defs."/$defs/thing_group_indexing_configuration/$defs/managed_field", [..._#defs."/$defs/thing_group_indexing_configuration/$defs/managed_field"]])
		thing_group_indexing_mode!: string
	})

	#thing_indexing_configuration: close({
		custom_field?: matchN(1, [_#defs."/$defs/thing_indexing_configuration/$defs/custom_field", [..._#defs."/$defs/thing_indexing_configuration/$defs/custom_field"]])
		device_defender_indexing_mode?:    string
		named_shadow_indexing_mode?:       string
		thing_connectivity_indexing_mode?: string
		thing_indexing_mode!:              string
		filter?: matchN(1, [_#defs."/$defs/thing_indexing_configuration/$defs/filter", list.MaxItems(1) & [..._#defs."/$defs/thing_indexing_configuration/$defs/filter"]])
		managed_field?: matchN(1, [_#defs."/$defs/thing_indexing_configuration/$defs/managed_field", [..._#defs."/$defs/thing_indexing_configuration/$defs/managed_field"]])
	})

	_#defs: "/$defs/thing_group_indexing_configuration/$defs/custom_field": close({
		name?: string
		type?: string
	})

	_#defs: "/$defs/thing_group_indexing_configuration/$defs/managed_field": close({
		name?: string
		type?: string
	})

	_#defs: "/$defs/thing_indexing_configuration/$defs/custom_field": close({
		name?: string
		type?: string
	})

	_#defs: "/$defs/thing_indexing_configuration/$defs/filter": close({
		named_shadow_names?: [...string]
	})

	_#defs: "/$defs/thing_indexing_configuration/$defs/managed_field": close({
		name?: string
		type?: string
	})
}
