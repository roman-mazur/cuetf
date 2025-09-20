package res

import "list"

#azurerm_automation_software_update_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automation_software_update_configuration")
	close({
		automation_account_id!: string
		duration?:              string
		error_code?:            string
		error_message?:         string
		id?:                    string
		linux?: matchN(1, [#linux, list.MaxItems(1) & [...#linux]])
		name!: string
		non_azure_computer_names?: [...string]
		post_task?: matchN(1, [#post_task, list.MaxItems(1) & [...#post_task]])
		pre_task?: matchN(1, [#pre_task, list.MaxItems(1) & [...#pre_task]])
		schedule?: matchN(1, [#schedule, list.MaxItems(1) & [_, ...] & [...#schedule]])
		target?: matchN(1, [#target, list.MaxItems(1) & [...#target]])
		timeouts?: #timeouts
		virtual_machine_ids?: [...string]
		windows?: matchN(1, [#windows, list.MaxItems(1) & [...#windows]])
	})

	#linux: close({
		classifications_included!: [...string]
		excluded_packages?: [...string]
		included_packages?: [...string]
		reboot?: string
	})

	#post_task: close({
		parameters?: [string]: string
		source?: string
	})

	#pre_task: close({
		parameters?: [string]: string
		source?: string
	})

	#schedule: close({
		advanced_month_days?: [...number]
		advanced_week_days?: [...string]
		creation_time?:              string
		description?:                string
		expiry_time?:                string
		expiry_time_offset_minutes?: number
		frequency!:                  string
		interval?:                   number
		is_enabled?:                 bool
		last_modified_time?:         string
		next_run?:                   string
		next_run_offset_minutes?:    number
		monthly_occurrence?: matchN(1, [_#defs."/$defs/schedule/$defs/monthly_occurrence", list.MaxItems(1) & [..._#defs."/$defs/schedule/$defs/monthly_occurrence"]])
		start_time?:                string
		start_time_offset_minutes?: number
		time_zone?:                 string
	})

	#target: close({
		azure_query?: matchN(1, [_#defs."/$defs/target/$defs/azure_query", [..._#defs."/$defs/target/$defs/azure_query"]])
		non_azure_query?: matchN(1, [_#defs."/$defs/target/$defs/non_azure_query", [..._#defs."/$defs/target/$defs/non_azure_query"]])
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	#windows: close({
		classifications_included!: [...string]
		excluded_knowledge_base_numbers?: [...string]
		included_knowledge_base_numbers?: [...string]
		reboot?: string
	})

	_#defs: "/$defs/schedule/$defs/monthly_occurrence": close({
		day!:        string
		occurrence!: number
	})

	_#defs: "/$defs/target/$defs/azure_query": close({
		tags?: matchN(1, [_#defs."/$defs/target/$defs/azure_query/$defs/tags", [..._#defs."/$defs/target/$defs/azure_query/$defs/tags"]])
		locations?: [...string]
		scope?: [...string]
		tag_filter?: string
	})

	_#defs: "/$defs/target/$defs/azure_query/$defs/tags": close({
		tag!: string
		values!: [...string]
	})

	_#defs: "/$defs/target/$defs/non_azure_query": close({
		function_alias?: string
		workspace_id?:   string
	})
}
