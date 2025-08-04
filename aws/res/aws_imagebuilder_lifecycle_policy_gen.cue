package res

#aws_imagebuilder_lifecycle_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_imagebuilder_lifecycle_policy")
	close({
		arn?:            string
		description?:    string
		execution_role!: string
		id?:             string
		name!:           string
		region?:         string
		resource_type!:  string
		policy_detail?: matchN(1, [#policy_detail, [...#policy_detail]])
		status?: string
		resource_selection?: matchN(1, [#resource_selection, [...#resource_selection]])
		tags?: [string]:     string
		tags_all?: [string]: string
	})

	#policy_detail: close({
		action?: matchN(1, [_#defs."/$defs/policy_detail/$defs/action", [..._#defs."/$defs/policy_detail/$defs/action"]])
		exclusion_rules?: matchN(1, [_#defs."/$defs/policy_detail/$defs/exclusion_rules", [..._#defs."/$defs/policy_detail/$defs/exclusion_rules"]])
		filter?: matchN(1, [_#defs."/$defs/policy_detail/$defs/filter", [..._#defs."/$defs/policy_detail/$defs/filter"]])
	})

	#resource_selection: close({
		recipe?: matchN(1, [_#defs."/$defs/resource_selection/$defs/recipe", [..._#defs."/$defs/resource_selection/$defs/recipe"]])
		tag_map?: [string]: string
	})

	_#defs: "/$defs/policy_detail/$defs/action": close({
		include_resources?: matchN(1, [_#defs."/$defs/policy_detail/$defs/action/$defs/include_resources", [..._#defs."/$defs/policy_detail/$defs/action/$defs/include_resources"]])
		type!: string
	})

	_#defs: "/$defs/policy_detail/$defs/action/$defs/include_resources": close({
		amis?:       bool
		containers?: bool
		snapshots?:  bool
	})

	_#defs: "/$defs/policy_detail/$defs/exclusion_rules": close({
		amis?: matchN(1, [_#defs."/$defs/policy_detail/$defs/exclusion_rules/$defs/amis", [..._#defs."/$defs/policy_detail/$defs/exclusion_rules/$defs/amis"]])
		tag_map?: [string]: string
	})

	_#defs: "/$defs/policy_detail/$defs/exclusion_rules/$defs/amis": close({
		last_launched?: matchN(1, [_#defs."/$defs/policy_detail/$defs/exclusion_rules/$defs/amis/$defs/last_launched", [..._#defs."/$defs/policy_detail/$defs/exclusion_rules/$defs/amis/$defs/last_launched"]])
		is_public?: bool
		regions?: [...string]
		shared_accounts?: [...string]
		tag_map?: [string]: string
	})

	_#defs: "/$defs/policy_detail/$defs/exclusion_rules/$defs/amis/$defs/last_launched": close({
		unit!:  string
		value!: number
	})

	_#defs: "/$defs/policy_detail/$defs/filter": close({
		retain_at_least?: number
		type!:            string
		unit?:            string
		value!:           number
	})

	_#defs: "/$defs/resource_selection/$defs/recipe": close({
		name!:             string
		semantic_version!: string
	})
}
