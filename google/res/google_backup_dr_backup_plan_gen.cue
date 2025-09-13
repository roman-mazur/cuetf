package res

import "list"

#google_backup_dr_backup_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_backup_dr_backup_plan")
	close({
		// The ID of the backup plan
		backup_plan_id!: string

		// Backup vault where the backups gets stored using this Backup
		// plan.
		backup_vault!: string

		// The Google Cloud Platform Service Account to be used by the
		// BackupVault for taking backups.
		backup_vault_service_account?: string

		// When the 'BackupPlan' was created.
		create_time?: string

		// The description allows for additional details about
		// 'BackupPlan' and its use cases to be provided.
		description?: string
		id?:          string

		// The location for the backup plan
		location!: string

		// This is only applicable for CloudSql resource. Days for which
		// logs will be stored. This value should be greater than or
		// equal to minimum enforced log retention duration of the backup
		// vault.
		log_retention_days?: number

		// The name of backup plan resource created
		name?:    string
		project?: string
		backup_rules?: matchN(1, [#backup_rules, [_, ...] & [...#backup_rules]])
		timeouts?: #timeouts

		// The resource type to which the 'BackupPlan' will be applied.
		// Examples include, "compute.googleapis.com/Instance",
		// "compute.googleapis.com/Disk",
		// "sqladmin.googleapis.com/Instance" and
		// "storage.googleapis.com/Bucket".
		resource_type!: string

		// The list of all resource types to which the 'BackupPlan' can be
		// applied.
		supported_resource_types?: [...string]

		// When the 'BackupPlan' was last updated.
		update_time?: string
	})

	#backup_rules: close({
		standard_schedule?: matchN(1, [_#defs."/$defs/backup_rules/$defs/standard_schedule", list.MaxItems(1) & [_, ...] & [..._#defs."/$defs/backup_rules/$defs/standard_schedule"]])

		// Configures the duration for which backup data will be kept. The
		// value should be greater than or equal to minimum enforced
		// retention of the backup vault.
		backup_retention_days!: number

		// The unique ID of this 'BackupRule'. The 'rule_id' is unique per
		// 'BackupPlan'.
		rule_id!: string
	})

	#timeouts: close({
		create?: string
		delete?: string
		update?: string
	})

	_#defs: "/$defs/backup_rules/$defs/standard_schedule": close({
		// Specifies days of months like 1, 5, or 14 on which jobs will
		// run.
		days_of_month?: [...number]

		// Specifies days of week like MONDAY or TUESDAY, on which jobs
		// will run. This is required for 'recurrence_type', 'WEEKLY' and
		// is not applicable otherwise. Possible values:
		// ["DAY_OF_WEEK_UNSPECIFIED", "MONDAY", "TUESDAY", "WEDNESDAY",
		// "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
		days_of_week?: [...string]

		// Specifies frequency for hourly backups. An hourly frequency of
		// 2 means jobs will run every 2 hours from start time till end
		// time defined.
		// This is required for 'recurrence_type', 'HOURLY' and is not
		// applicable otherwise.
		hourly_frequency?: number
		backup_window?: matchN(1, [_#defs."/$defs/backup_rules/$defs/standard_schedule/$defs/backup_window", list.MaxItems(1) & [..._#defs."/$defs/backup_rules/$defs/standard_schedule/$defs/backup_window"]])

		// Specifies values of months Possible values:
		// ["MONTH_UNSPECIFIED", "JANUARY", "FEBRUARY", "MARCH", "APRIL",
		// "MAY", "JUNE", "JULY", "AUGUST", "SEPTEMBER", "OCTOBER",
		// "NOVEMBER", "DECEMBER"]
		months?: [...string]
		week_day_of_month?: matchN(1, [_#defs."/$defs/backup_rules/$defs/standard_schedule/$defs/week_day_of_month", list.MaxItems(1) & [..._#defs."/$defs/backup_rules/$defs/standard_schedule/$defs/week_day_of_month"]])

		// RecurrenceType enumerates the applicable periodicity for the
		// schedule. Possible values: ["HOURLY", "DAILY", "WEEKLY",
		// "MONTHLY", "YEARLY"]
		recurrence_type!: string

		// The time zone to be used when interpreting the schedule.
		time_zone!: string
	})

	_#defs: "/$defs/backup_rules/$defs/standard_schedule/$defs/backup_window": close({
		// The hour of the day (1-24) when the window ends, for example,
		// if the value of end hour of the day is 10, that means the
		// backup window end time is 10:00.
		// The end hour of the day should be greater than the start
		end_hour_of_day?: number

		// The hour of the day (0-23) when the window starts, for example,
		// if the value of the start hour of the day is 6, that means the
		// backup window starts at 6:00.
		start_hour_of_day!: number
	})

	_#defs: "/$defs/backup_rules/$defs/standard_schedule/$defs/week_day_of_month": close({
		// Specifies the day of the week. Possible values:
		// ["DAY_OF_WEEK_UNSPECIFIED", "MONDAY", "TUESDAY", "WEDNESDAY",
		// "THURSDAY", "FRIDAY", "SATURDAY", "SUNDAY"]
		day_of_week!: string

		// WeekOfMonth enumerates possible weeks in the month, e.g. the
		// first, third, or last week of the month. Possible values:
		// ["WEEK_OF_MONTH_UNSPECIFIED", "FIRST", "SECOND", "THIRD",
		// "FOURTH", "LAST"]
		week_of_month!: string
	})
}
