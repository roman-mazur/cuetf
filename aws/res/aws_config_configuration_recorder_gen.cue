package res

import "list"

#aws_config_configuration_recorder: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_config_configuration_recorder")
	close({
		id?:   string
		name?: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?:   string
		role_arn!: string
		recording_group?: matchN(1, [#recording_group, list.MaxItems(1) & [...#recording_group]])
		recording_mode?: matchN(1, [#recording_mode, list.MaxItems(1) & [...#recording_mode]])
	})

	#recording_group: close({
		exclusion_by_resource_types?: matchN(1, [_#defs."/$defs/recording_group/$defs/exclusion_by_resource_types", [..._#defs."/$defs/recording_group/$defs/exclusion_by_resource_types"]])
		recording_strategy?: matchN(1, [_#defs."/$defs/recording_group/$defs/recording_strategy", [..._#defs."/$defs/recording_group/$defs/recording_strategy"]])
		all_supported?:                 bool
		include_global_resource_types?: bool
		resource_types?: [...string]
	})

	#recording_mode: close({
		recording_mode_override?: matchN(1, [_#defs."/$defs/recording_mode/$defs/recording_mode_override", list.MaxItems(1) & [..._#defs."/$defs/recording_mode/$defs/recording_mode_override"]])
		recording_frequency?: string
	})

	_#defs: "/$defs/recording_group/$defs/exclusion_by_resource_types": close({
		resource_types?: [...string]
	})

	_#defs: "/$defs/recording_group/$defs/recording_strategy": close({
		use_only?: string
	})

	_#defs: "/$defs/recording_mode/$defs/recording_mode_override": close({
		description?:         string
		recording_frequency!: string
		resource_types!: [...string]
	})
}
