package res

import "list"

#azurerm_automanage_configuration: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/azurerm_automanage_configuration")
	close({
		automation_account_enabled?:  bool
		boot_diagnostics_enabled?:    bool
		defender_for_cloud_enabled?:  bool
		guest_configuration_enabled?: bool
		id?:                          string
		location!:                    string
		log_analytics_enabled?:       bool
		name!:                        string
		antimalware?: matchN(1, [#antimalware, list.MaxItems(1) & [...#antimalware]])
		resource_group_name!: string
		azure_security_baseline?: matchN(1, [#azure_security_baseline, list.MaxItems(1) & [...#azure_security_baseline]])
		status_change_alert_enabled?: bool
		backup?: matchN(1, [#backup, list.MaxItems(1) & [...#backup]])
		timeouts?: #timeouts
		tags?: [string]: string
	})

	#antimalware: close({
		exclusions?: matchN(1, [_#defs."/$defs/antimalware/$defs/exclusions", list.MaxItems(1) & [..._#defs."/$defs/antimalware/$defs/exclusions"]])
		real_time_protection_enabled?:   bool
		scheduled_scan_day?:             number
		scheduled_scan_enabled?:         bool
		scheduled_scan_time_in_minutes?: number
		scheduled_scan_type?:            string
	})

	#azure_security_baseline: close({
		assignment_type?: string
	})

	#backup: close({
		retention_policy?: matchN(1, [_#defs."/$defs/backup/$defs/retention_policy", list.MaxItems(1) & [..._#defs."/$defs/backup/$defs/retention_policy"]])
		schedule_policy?: matchN(1, [_#defs."/$defs/backup/$defs/schedule_policy", list.MaxItems(1) & [..._#defs."/$defs/backup/$defs/schedule_policy"]])
		instant_rp_retention_range_in_days?: number
		policy_name?:                        string
		time_zone?:                          string
	})

	#timeouts: close({
		create?: string
		delete?: string
		read?:   string
		update?: string
	})

	_#defs: "/$defs/antimalware/$defs/exclusions": close({
		extensions?: string
		paths?:      string
		processes?:  string
	})

	_#defs: "/$defs/backup/$defs/retention_policy": close({
		daily_schedule?: matchN(1, [_#defs."/$defs/backup/$defs/retention_policy/$defs/daily_schedule", list.MaxItems(1) & [..._#defs."/$defs/backup/$defs/retention_policy/$defs/daily_schedule"]])
		weekly_schedule?: matchN(1, [_#defs."/$defs/backup/$defs/retention_policy/$defs/weekly_schedule", list.MaxItems(1) & [..._#defs."/$defs/backup/$defs/retention_policy/$defs/weekly_schedule"]])
		retention_policy_type?: string
	})

	_#defs: "/$defs/backup/$defs/retention_policy/$defs/daily_schedule": close({
		retention_duration?: matchN(1, [_#defs."/$defs/backup/$defs/retention_policy/$defs/daily_schedule/$defs/retention_duration", list.MaxItems(1) & [..._#defs."/$defs/backup/$defs/retention_policy/$defs/daily_schedule/$defs/retention_duration"]])
		retention_times?: [...string]
	})

	_#defs: "/$defs/backup/$defs/retention_policy/$defs/daily_schedule/$defs/retention_duration": close({
		count?:         number
		duration_type?: string
	})

	_#defs: "/$defs/backup/$defs/retention_policy/$defs/weekly_schedule": close({
		retention_duration?: matchN(1, [_#defs."/$defs/backup/$defs/retention_policy/$defs/weekly_schedule/$defs/retention_duration", list.MaxItems(1) & [..._#defs."/$defs/backup/$defs/retention_policy/$defs/weekly_schedule/$defs/retention_duration"]])
		retention_times?: [...string]
	})

	_#defs: "/$defs/backup/$defs/retention_policy/$defs/weekly_schedule/$defs/retention_duration": close({
		count?:         number
		duration_type?: string
	})

	_#defs: "/$defs/backup/$defs/schedule_policy": close({
		schedule_policy_type?: string
		schedule_run_days?: [...string]
		schedule_run_frequency?: string
		schedule_run_times?: [...string]
	})
}
