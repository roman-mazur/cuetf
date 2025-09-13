package res

import "list"

#aws_dlm_lifecycle_policy: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_dlm_lifecycle_policy")
	close({
		arn?:                string
		description!:        string
		execution_role_arn!: string
		id?:                 string

		// Region where this resource will be
		// [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints).
		// Defaults to the Region set in the [provider
		// configuration](https://registry.terraform.io/providers/hashicorp/aws/latest/docs#aws-configuration-reference).
		region?: string
		state?:  string
		tags?: [string]:     string
		tags_all?: [string]: string
		policy_details?: matchN(1, [#policy_details, list.MaxItems(1) & [_, ...] & [...#policy_details]])
	})

	#policy_details: close({
		action?: matchN(1, [_#defs."/$defs/policy_details/$defs/action", list.MaxItems(1) & [..._#defs."/$defs/policy_details/$defs/action"]])
		policy_type?: string
		resource_locations?: [...string]
		resource_types?: [...string]
		target_tags?: [string]: string
		event_source?: matchN(1, [_#defs."/$defs/policy_details/$defs/event_source", list.MaxItems(1) & [..._#defs."/$defs/policy_details/$defs/event_source"]])
		parameters?: matchN(1, [_#defs."/$defs/policy_details/$defs/parameters", list.MaxItems(1) & [..._#defs."/$defs/policy_details/$defs/parameters"]])
		schedule?: matchN(1, [_#defs."/$defs/policy_details/$defs/schedule", list.MaxItems(4) & [..._#defs."/$defs/policy_details/$defs/schedule"]])
	})

	_#defs: "/$defs/policy_details/$defs/action": close({
		cross_region_copy?: matchN(1, [_#defs."/$defs/policy_details/$defs/action/$defs/cross_region_copy", list.MaxItems(3) & [_, ...] & [..._#defs."/$defs/policy_details/$defs/action/$defs/cross_region_copy"]])
		name!: string
	})

	_#defs: "/$defs/policy_details/$defs/action/$defs/cross_region_copy": close({
		encryption_configuration?: matchN(1, [_#defs."/$defs/policy_details/$defs/action/$defs/cross_region_copy/$defs/encryption_configuration", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/policy_details/$defs/action/$defs/cross_region_copy/$defs/encryption_configuration"]])
		retain_rule?: matchN(1, [_#defs."/$defs/policy_details/$defs/action/$defs/cross_region_copy/$defs/retain_rule", list.MaxItems(1) & [..._#defs."/$defs/policy_details/$defs/action/$defs/cross_region_copy/$defs/retain_rule"]])
		target!: string
	})

	_#defs: "/$defs/policy_details/$defs/action/$defs/cross_region_copy/$defs/encryption_configuration": close({
		cmk_arn?:   string
		encrypted?: bool
	})

	_#defs: "/$defs/policy_details/$defs/action/$defs/cross_region_copy/$defs/retain_rule": close({
		interval!:      number
		interval_unit!: string
	})

	_#defs: "/$defs/policy_details/$defs/event_source": close({
		parameters?: matchN(1, [_#defs."/$defs/policy_details/$defs/event_source/$defs/parameters", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/policy_details/$defs/event_source/$defs/parameters"]])
		type!: string
	})

	_#defs: "/$defs/policy_details/$defs/event_source/$defs/parameters": close({
		description_regex!: string
		event_type!:        string
		snapshot_owner!: [...string]
	})

	_#defs: "/$defs/policy_details/$defs/parameters": close({
		exclude_boot_volume?: bool
		no_reboot?:           bool
	})

	_#defs: "/$defs/policy_details/$defs/schedule": close({
		create_rule?: matchN(1, [_#defs."/$defs/policy_details/$defs/schedule/$defs/create_rule", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/policy_details/$defs/schedule/$defs/create_rule"]])
		copy_tags?: bool
		name!:      string
		tags_to_add?: [string]:   string
		variable_tags?: [string]: string
		cross_region_copy_rule?: matchN(1, [_#defs."/$defs/policy_details/$defs/schedule/$defs/cross_region_copy_rule", list.MaxItems(3) & [..._#defs."/$defs/policy_details/$defs/schedule/$defs/cross_region_copy_rule"]])
		deprecate_rule?: matchN(1, [_#defs."/$defs/policy_details/$defs/schedule/$defs/deprecate_rule", list.MaxItems(1) & [..._#defs."/$defs/policy_details/$defs/schedule/$defs/deprecate_rule"]])
		fast_restore_rule?: matchN(1, [_#defs."/$defs/policy_details/$defs/schedule/$defs/fast_restore_rule", list.MaxItems(1) & [..._#defs."/$defs/policy_details/$defs/schedule/$defs/fast_restore_rule"]])
		retain_rule?: matchN(1, [_#defs."/$defs/policy_details/$defs/schedule/$defs/retain_rule", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/policy_details/$defs/schedule/$defs/retain_rule"]])
		share_rule?: matchN(1, [_#defs."/$defs/policy_details/$defs/schedule/$defs/share_rule", list.MaxItems(1) & [..._#defs."/$defs/policy_details/$defs/schedule/$defs/share_rule"]])
	})

	_#defs: "/$defs/policy_details/$defs/schedule/$defs/create_rule": close({
		cron_expression?: string
		interval?:        number
		interval_unit?:   string
		location?:        string
		times?: [...string]
	})

	_#defs: "/$defs/policy_details/$defs/schedule/$defs/cross_region_copy_rule": close({
		deprecate_rule?: matchN(1, [_#defs."/$defs/policy_details/$defs/schedule/$defs/cross_region_copy_rule/$defs/deprecate_rule", list.MaxItems(1) & [..._#defs."/$defs/policy_details/$defs/schedule/$defs/cross_region_copy_rule/$defs/deprecate_rule"]])
		cmk_arn?:   string
		copy_tags?: bool
		encrypted!: bool
		target!:    string
		retain_rule?: matchN(1, [_#defs."/$defs/policy_details/$defs/schedule/$defs/cross_region_copy_rule/$defs/retain_rule", list.MaxItems(1) & [..._#defs."/$defs/policy_details/$defs/schedule/$defs/cross_region_copy_rule/$defs/retain_rule"]])
	})

	_#defs: "/$defs/policy_details/$defs/schedule/$defs/cross_region_copy_rule/$defs/deprecate_rule": close({
		interval!:      number
		interval_unit!: string
	})

	_#defs: "/$defs/policy_details/$defs/schedule/$defs/cross_region_copy_rule/$defs/retain_rule": close({
		interval!:      number
		interval_unit!: string
	})

	_#defs: "/$defs/policy_details/$defs/schedule/$defs/deprecate_rule": close({
		count?:         number
		interval?:      number
		interval_unit?: string
	})

	_#defs: "/$defs/policy_details/$defs/schedule/$defs/fast_restore_rule": close({
		availability_zones!: [...string]
		count?:         number
		interval?:      number
		interval_unit?: string
	})

	_#defs: "/$defs/policy_details/$defs/schedule/$defs/retain_rule": close({
		count?:         number
		interval?:      number
		interval_unit?: string
	})

	_#defs: "/$defs/policy_details/$defs/schedule/$defs/share_rule": close({
		target_accounts!: [...string]
		unshare_interval?:      number
		unshare_interval_unit?: string
	})
}
