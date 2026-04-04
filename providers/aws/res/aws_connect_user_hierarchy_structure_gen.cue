package res

import "list"

#aws_connect_user_hierarchy_structure: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/res/aws_connect_user_hierarchy_structure")
	close({
		hierarchy_structure!: matchN(1, [#hierarchy_structure, list.MaxItems(1) & [_, ...] & [...#hierarchy_structure]])
		id?:          string
		instance_id!: string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
	})

	#hierarchy_structure: close({
		level_five?: matchN(1, [_#defs."/$defs/hierarchy_structure/$defs/level_five", list.MaxItems(1) & [..._#defs."/$defs/hierarchy_structure/$defs/level_five"]])
		level_four?: matchN(1, [_#defs."/$defs/hierarchy_structure/$defs/level_four", list.MaxItems(1) & [..._#defs."/$defs/hierarchy_structure/$defs/level_four"]])
		level_one?: matchN(1, [_#defs."/$defs/hierarchy_structure/$defs/level_one", list.MaxItems(1) & [..._#defs."/$defs/hierarchy_structure/$defs/level_one"]])
		level_three?: matchN(1, [_#defs."/$defs/hierarchy_structure/$defs/level_three", list.MaxItems(1) & [..._#defs."/$defs/hierarchy_structure/$defs/level_three"]])
		level_two?: matchN(1, [_#defs."/$defs/hierarchy_structure/$defs/level_two", list.MaxItems(1) & [..._#defs."/$defs/hierarchy_structure/$defs/level_two"]])
	})

	_#defs: "/$defs/hierarchy_structure/$defs/level_five": close({
		arn?:  string
		id?:   string
		name!: string
	})

	_#defs: "/$defs/hierarchy_structure/$defs/level_four": close({
		arn?:  string
		id?:   string
		name!: string
	})

	_#defs: "/$defs/hierarchy_structure/$defs/level_one": close({
		arn?:  string
		id?:   string
		name!: string
	})

	_#defs: "/$defs/hierarchy_structure/$defs/level_three": close({
		arn?:  string
		id?:   string
		name!: string
	})

	_#defs: "/$defs/hierarchy_structure/$defs/level_two": close({
		arn?:  string
		id?:   string
		name!: string
	})
}
