package data

#google_backup_dr_backup_plan: {
	@jsonschema(schema="https://json-schema.org/draft/2020-12/schema")
	@jsonschema(id="https://github.com/roman-mazur/cuetf/schema/google_backup_dr_backup_plan")
	close({
		// The ID of the backup plan
		backup_plan_id!: string

		// The backup rules for this 'BackupPlan'. There must be at least
		// one 'BackupRule' message.
		backup_rules?: [...close({
			backup_retention_days?: number
			rule_id?:               string
			standard_schedule?: [...close({
				backup_window?: [...close({
					end_hour_of_day?:   number
					start_hour_of_day?: number
				})]
				days_of_month?: [...number]
				days_of_week?: [...string]
				hourly_frequency?: number
				months?: [...string]
				recurrence_type?: string
				time_zone?:       string
				week_day_of_month?: [...close({
					day_of_week?:   string
					week_of_month?: string
				})]
			})]
		})]

		// Backup vault where the backups gets stored using this Backup
		// plan.
		backup_vault?: string

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

		// The resource type to which the 'BackupPlan' will be applied.
		// Examples include, "compute.googleapis.com/Instance",
		// "compute.googleapis.com/Disk",
		// "sqladmin.googleapis.com/Instance" and
		// "storage.googleapis.com/Bucket".
		resource_type?: string

		// The list of all resource types to which the 'BackupPlan' can be
		// applied.
		supported_resource_types?: [...string]

		// When the 'BackupPlan' was last updated.
		update_time?: string
	})
}
