package res

import "list"

#aws_backup_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/aws_backup_plan")
	close({
		advanced_backup_setting?: matchN(1, [#advanced_backup_setting, [...#advanced_backup_setting]])
		arn?:    string
		id?:     string
		name!:   string
		region?: string
		tags?: [string]:     string
		tags_all?: [string]: string
		version?: string
		rule?: matchN(1, [#rule, [_, ...] & [...#rule]])
	})

	#advanced_backup_setting: close({
		backup_options!: [string]: string
		resource_type!: string
	})

	#rule: close({
		copy_action?: matchN(1, [_#defs."/$defs/rule/$defs/copy_action", [..._#defs."/$defs/rule/$defs/copy_action"]])
		completion_window?:        number
		enable_continuous_backup?: bool
		recovery_point_tags?: [string]: string
		rule_name!:                    string
		schedule?:                     string
		schedule_expression_timezone?: string
		start_window?:                 number
		target_vault_name!:            string
		lifecycle?: matchN(1, [_#defs."/$defs/rule/$defs/lifecycle", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/lifecycle"]])
	})

	_#defs: "/$defs/rule/$defs/copy_action": close({
		lifecycle?: matchN(1, [_#defs."/$defs/rule/$defs/copy_action/$defs/lifecycle", list.MaxItems(1) & [..._#defs."/$defs/rule/$defs/copy_action/$defs/lifecycle"]])
		destination_vault_arn!: string
	})

	_#defs: "/$defs/rule/$defs/copy_action/$defs/lifecycle": close({
		cold_storage_after?:                        number
		delete_after?:                              number
		opt_in_to_archive_for_supported_resources?: bool
	})

	_#defs: "/$defs/rule/$defs/lifecycle": close({
		cold_storage_after?:                        number
		delete_after?:                              number
		opt_in_to_archive_for_supported_resources?: bool
	})
}
